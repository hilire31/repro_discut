# seg conllu file single file
# inputs: model_dir input_file output file
import torch
import re
import sys
from transformers import AutoTokenizer, XLMRobertaForTokenClassification

# Load the fine-tuned model
#model_dir = "/kaggle/input/connmodel10/transformers/default/1/xlm-roberta-connective-10epochnew1"  #  trained model dir
model_dir = sys.argv[1]  #  trained model dir
tokenizer = AutoTokenizer.from_pretrained(model_dir)
model = XLMRobertaForTokenClassification.from_pretrained(model_dir)
model.eval()  # set model to evaluation mode

# Move to GPU if available
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model.to(device)


# Define your label list (same as training)
label_list = ["O", "B-seg"]  

def process(sent_lines):
    idds = []
    tokens = []

    #ll = len(sent_lines)
    #print('No of line'+str(ll))
    
    for line in sent_lines:
        parts = line.strip().split('\t')
        if len(parts) < 2:
            parts.append('-')
        idds.append(parts[0])
        tokens.append(parts[1])  # Same as Perl code (might be a placeholder)

    tags = []
    
    if(len(tokens) > 300):
        chunk_size = 280
        for i in range(0, len(tokens), chunk_size):
            chunk_tokens = tokens[i:i + chunk_size]
            #newSentW = " ".join(chunk_tokens)
            sentence_str = " ".join(chunk_tokens)
            #print(sentence_str)
            analysis = predict(sentence_str)

            for word, label in analysis:
                tags.append(label)
    else:   
        sentence_str = " ".join(tokens)
        #print(sentence_str)
        analysis = predict(sentence_str)

        for word, label in analysis:
            tags.append(label)

    
    new_sent = []
    for i, line in enumerate(sent_lines):
        parts = line.strip().split('\t')
        #print(parts)
        if(len(tags) > i):
            if parts:
                parts = parts[:-1]  # Remove the last column (if assuming to replace)
            parts.append(f"Seg={tags[i]}")
            new_sent.append("\t".join(parts))

    return new_sent

def predict(sentence,name_file:str=None):
    # Tokenize input sentence
    tokens = tokenizer(
        sentence.split(),  # token classification needs pre-tokenized input
        is_split_into_words=True,
        return_tensors="pt",
        truncation=True,
        max_length=512,
        padding="max_length"
    )
    
    input_ids = tokens["input_ids"].to(device)
    attention_mask = tokens["attention_mask"].to(device)

    with torch.no_grad():
        outputs = model(input_ids=input_ids, attention_mask=attention_mask)
    
    logits = outputs.logits  # shape: (batch_size, seq_len, num_labels)
    predictions = torch.argmax(logits, dim=2)

    # Convert prediction indices to labels
    pred_labels = [label_list[label_id] for label_id in predictions[0].cpu().numpy()]
    word_ids = tokens.word_ids(batch_index=0)

    # Align predictions with original words
    final_output = []
    prev_word_id = None
    for idx, word_id in enumerate(word_ids):
        if word_id is None or word_id == prev_word_id:
            continue
        final_output.append((sentence.split()[word_id], pred_labels[idx]))
        print(f"we append tags from predict, we are in {name_file} file")
        prev_word_id = word_id

    return final_output


with open(sys.argv[2], 'r') as infile:    
    docA = [line.rstrip('\n') for line in infile]

with open(sys.argv[3], "w", encoding="utf-8") as outfile: 
#with open("fra.sdrt.summre_test.conllu", "w", encoding="utf-8") as outfile: 
        flag = 0
        sentA = []
        for line in docA:
            line = line.rstrip('\n')

            if "# text =" in line:
                #print(line)
                outfile.write(line + "\n")
                flag = 1
                continue

            if re.match(r"^\#", line):
                outfile.write(line + "\n")
                continue

            if (flag == 0):
                if (line.startswith("1\t")):
                    flag = 1
            #if re.match(r"^1\t", line):
            #    flag = 1

            if line.strip() == "":
                l1 = len(sentA)
                processed = process(sentA,name_file=sys.argv[3])
                l2 = len(processed)
                #outfile.write(f'{l1}\t{l2}\t{flag}\n')
                if(l1 > l2):
                    dif = l1 - l2
                    for iii in range (dif):
                        jjj = iii+1
                        processed.append(sentA[-jjj])
                        
                #processed = process(sentA)
                outfile.write("\n".join(processed))
                outfile.write("\n")
                outfile.write("\n")
                #print()
                sentA = []
                flag = 0
                continue

            if flag == 1:
                sentA.append(line)
            else:
                #print(line)
                outfile.write(line + "\n")
