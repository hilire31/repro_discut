# connective identification tok 
#input model_dir, input_tok_file, output file 
import torch
import re
import sys
from transformers import AutoTokenizer, XLMRobertaForTokenClassification

# Load the fine-tuned model
model_dir = sys.argv[1]  #  trained model dir
tokenizer = AutoTokenizer.from_pretrained(model_dir)
model = XLMRobertaForTokenClassification.from_pretrained(model_dir)
model.eval()  # set model to evaluation mode

# Move to GPU if available
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model.to(device)


# Combined set of sentence-ending punctuation across many languages
SENTENCE_END_PUNCTUATION = {".", "!", "?", "؟", "۔", "።", "။", "፨","。", "！", "？", "৷", "॥", "፣", "…", "ฯ"}


# Define your label list (same as training)
label_list = ["O", "B-conn", "I-conn"]  # Adjust this if you have more labels

def process_file_without_language(docArray, file_path, tag_col_index=9):
    results = []
    tokens, tags, idds = [], [], []
    MAX_LEN = 280
    puncMatch = 0

    
    for line in docArray:
        line = line.strip()

        if not line or line.startswith("#"):
            continue

        cols = line.split("\t")
        if len(cols) <= tag_col_index:
            continue

        token = cols[1]
        #if(' ' in token):
        #    print("!~!~!~!~!~!~!~!~!~!~!~!~!"+token+"!~!~!~!~!~!~!~!~!~!~")
        idd = cols[0]
        tag = cols[tag_col_index]
        tag = tag.split("=")[1] if "=" in tag else "O"

        tokens.append(token)
        tags.append(tag)
        idds.append(idd)

        # Sentence boundary check — any known end punctuation
        #if token in SENTENCE_END_PUNCTUATION:
        if "ita." not in file_path:
            if token in SENTENCE_END_PUNCTUATION or len(tokens) >= MAX_LEN:
                #print ("Punc matched- "+token )
                puncMatch = 1
                while len(tokens) > MAX_LEN:
                    # Split into chunks of MAX_LEN
                    newSentW =" ".join(tokens[:MAX_LEN])
                    newIDDs =" ".join(idds[:MAX_LEN]) 
                    newSent = newSentW+"<SPTT>"+newIDDs
                    results.append(newSent)
                    #{
                    #    "input": " ".join(tokens[:MAX_LEN]),
                    #    "target": " ".join(tags[:MAX_LEN])
                    #})
                    tokens = tokens[MAX_LEN:]
                    tags = tags[MAX_LEN:]
                    idds = idds[MAX_LEN:]
                
    		    # Append remaining chunk as a sentence
                if tokens:
                    newSentW = " ".join(tokens)
                    newIDDs =" ".join(idds)
                    newSent = newSentW+"<SPTT>"+newIDDs
                    results.append(newSent)
                    #results.append({
                    #    "input": " ".join(tokens),
                    #    "target": " ".join(tags)
                    #})
                    tokens = []
                    tags = []
                    idds = []

    # Add any leftover sentence
    #print("PuncMatch= "+str(puncMatch))
    if tokens:
        #print("Icame herere~~~~~~~~~~~")
        if (puncMatch == 0):
            chunk_size = 8
            for i in range(0, len(tokens), chunk_size):
                chunk_tokens = tokens[i:i + chunk_size]
                chunk_tags = tags[i:i + chunk_size]
                chunk_idds = idds[i:i + chunk_size]

                newSentW = " ".join(chunk_tokens)
                newIDDs = " ".join(chunk_idds)
                newSent = newSentW+"<SPTT>"+newIDDs
                results.append(newSent)
                #results.append({
                #    "input": " ".join(chunk_tokens),
                #    "target": " ".join(chunk_tags)
                #})
        else:
            newSentW = " ".join(tokens)
            newIDDs =" ".join(idds)
            newSent = newSentW+"<SPTT>"+newIDDs
            results.append(newSent)
            #results.append(newSent)
            #    "input": " ".join(tokens),
            #    "target": " ".join(tags)
            #})
    return results

def predict(sentence):
    # Tokenize input sentence
    tokens = tokenizer(
        sentence.split(),  # token classification needs pre-tokenized input
        is_split_into_words=True,
        return_tensors="pt",
        truncation=True,
        padding="max_length",
        max_length=512
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
        prev_word_id = word_id

    return final_output


#start_flag = False
#doc_array = []
#prev = ""

start_flag = False
doc_array = []
prev = ""
prevLinee = ""
emptyCount = 0

with open(sys.argv[2], 'r', encoding='utf-8') as file:    
    docA = [line.rstrip('\n') for line in file]
    #print(docA)

with open(sys.argv[3], "w", encoding="utf-8") as outfile:
    for line in docA:
        line = line.rstrip("\n")
        #print(line)
    
        # If both previous and current lines are blank
        if prev.strip() == "" and line.strip() == "":
            #print(line)
            outfile.write(line + "\n")
            prev = line
            continue
    
        # Check for newdoc marker
        if "# newdoc id" in line:
            #print(line)
            counter = 1
            emptyCount = 0
            outfile.write(line + "\n")
            start_flag = True
            doc_array = []
            prev = line
            continue
    
        if start_flag:
            fields = line.split('\t')
            if len(fields) > 1 and re.fullmatch(r'_+', fields[1]):
                #print(line)
                outfile.write(line + "\n")
                emptyCount = emptyCount +1
            elif re.fullmatch(r'_+', prevLinee):
                #print(line)
                outfile.write(line + "\n")
            elif (emptyCount > 10):
                #print(line)
                outfile.write(line + "\n")
            else:
                doc_array.append(line)
                #doc_array.append(line)
    
        # On blank line, print the collected doc lines
        fpath = sys.argv[2]
        if line.strip() == "":
            puncSent = process_file_without_language(doc_array, fpath, tag_col_index=9)
            for doc_line in puncSent:
                reqInfo = re.split(r'<SPTT>', doc_line)
                #print(reqInfo[0])
                #print(reqInfo[1])
                #print("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")
                
                doc_line1 = reqInfo[0].strip()
                doc_line2 = reqInfo[1].strip()
                analysis = predict(doc_line1)
                indexArray = []
                indexArray = re.split(r' ', doc_line2)
                #print("Length of indexArray:", len(indexArray))
                #print("Length of analysis:", len(analysis))
                counter = 0  
                #for word, label in analysis:
                    #print(word)
                for word, label in analysis:
                    #print(f"{counter}\t{word}\t_\t_\t_\t_\t_\t_\t_\tSeg={label}")
                    outfile.write(f"{indexArray[counter]}\t{word}\t_\t_\t_\t_\t_\t_\t_\tConn={label}\n")
                    counter = counter+1
                    #print(f"{word}\t_\t_\t_\t_\t_\t_\t_\tSeg={label}")
                    #outfile(f"{word}\t_\t_\t_\t_\t_\t_\t_\tSeg={label}")
        
            outfile.write(line + "\n")
            # Optionally clear if each segment should be distinct
            # doc_array = []
    
        #prev = line
        fields = line.split('\t')
        if(len(fields) > 1):
            prevLinee = fields[1]
        else:
            prevLinee = ""

        prev = line
        
