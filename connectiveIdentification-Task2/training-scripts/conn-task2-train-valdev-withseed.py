import json
import nltk
import torch
import sys

from transformers import (
    XLMRobertaTokenizerFast,
    AutoModelForTokenClassification,
    TrainingArguments,
    Trainer,
    set_seed,
)
from datasets import Dataset
from nltk.tokenize import word_tokenize
import os

# Set environment and seed
os.environ["CUDA_VISIBLE_DEVICES"] = "0"
##os.environ["WANDB_DISABLED"] = "true"
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
set_seed(42)

nltk.download("punkt")
nltk.download("punkt_tab")

# Load tokenizer and model
model_checkpoint = "xlm-roberta-base"
tokenizer = XLMRobertaTokenizerFast.from_pretrained(model_checkpoint)

label_list = ["O", "B-conn", "I-conn"]
label_to_id = {label: i for i, label in enumerate(label_list)}
id_to_label = {i: label for label, i in label_to_id.items()}

def load_and_process_data(json_path):
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)

    raw_data = []
    for item in data:
        sentence = item["input"]
        label_str = item["target"]
        words = word_tokenize(sentence)
        labels = word_tokenize(label_str)

        if len(words) != len(labels):
            continue

        raw_data.append({"tokens": words, "ner_tags": [label_to_id[l] for l in labels]})
    return Dataset.from_list(raw_data)

# Load training and dev datasets
#train_dataset = load_and_process_data("conn_train.json")
#dev_dataset = load_and_process_data("conn_dev.json")
train_dataset = load_and_process_data(sys.argv[1])
dev_dataset = load_and_process_data(sys.argv[2])

def tokenize_and_align_labels(example):
    tokenized_inputs = tokenizer(
        example["tokens"],
        truncation=True,
        is_split_into_words=True,
        padding="max_length",
        max_length=512,
    )

    word_ids = tokenized_inputs.word_ids()
    previous_word_idx = None
    label_ids = []
    for word_idx in word_ids:
        if word_idx is None:
            label_ids.append(-100)
        elif word_idx != previous_word_idx:
            label_ids.append(example["ner_tags"][word_idx])
        else:
            label_ids.append(-100)
        previous_word_idx = word_idx

    tokenized_inputs["labels"] = label_ids
    return tokenized_inputs

# Tokenize datasets
train_dataset = train_dataset.map(tokenize_and_align_labels, batched=False)
dev_dataset = dev_dataset.map(tokenize_and_align_labels, batched=False)

# Load model
model = AutoModelForTokenClassification.from_pretrained(
    model_checkpoint,
    num_labels=len(label_list),
    id2label=id_to_label,
    label2id=label_to_id,
)

# Training arguments
training_args = TrainingArguments(
    output_dir="./xlm-roberta-connective-10epochnew",
    eval_strategy="epoch",
    learning_rate=1e-5,
    per_device_train_batch_size=8,
    per_device_eval_batch_size=8,
    num_train_epochs=10,
    weight_decay=0.01,
    logging_dir="./logs",
    save_strategy="epoch",
    save_total_limit=2,
    load_best_model_at_end=True,
    seed=42,
)

# Metrics
from seqeval.metrics import accuracy_score, f1_score

def compute_metrics(p):
    predictions, labels = p
    predictions = predictions.argmax(axis=-1)

    true_predictions = [
        [id_to_label[p] for (p, l) in zip(pred, label) if l != -100]
        for pred, label in zip(predictions, labels)
    ]
    true_labels = [
        [id_to_label[l] for (p, l) in zip(pred, label) if l != -100]
        for pred, label in zip(predictions, labels)
    ]

    return {
        "accuracy": accuracy_score(true_labels, true_predictions),
        "f1": f1_score(true_labels, true_predictions),
    }

# Trainer
trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=train_dataset,
    eval_dataset=dev_dataset,
    tokenizer=tokenizer,
    compute_metrics=compute_metrics,
)

# Train
trainer.train()

# Save
model.save_pretrained("./xlm-roberta-connective-10epochnew1")
tokenizer.save_pretrained("./xlm-roberta-connective-10epochnew1")

