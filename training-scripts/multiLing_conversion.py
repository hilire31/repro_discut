import json
import sys

# Combined set of sentence-ending punctuation across many languages
SENTENCE_END_PUNCTUATION = {".", "!", "?", "؟", "۔", "።", "။", "፨","。", "！", "？", "৷", "॥", "፣", "…", "ฯ"}

def process_file_without_language(file_path, tag_col_index=9):
    results = []
    tokens, tags = [], []
    MAX_LEN = 300
    puncMatch = 0

    with open(file_path, encoding="utf-8") as f:
        for line in f:
            line = line.strip()

            if not line or line.startswith("#"):
                continue

            cols = line.split("\t")
            if len(cols) <= tag_col_index:
                continue

            token = cols[1]
            tag = cols[tag_col_index]
            tag = tag.split("=")[1] if "=" in tag else "O"

            tokens.append(token)
            tags.append(tag)

            # Sentence boundary check — any known end punctuation
            #if token in SENTENCE_END_PUNCTUATION:
            if not file_path.startswith("data/ita"):
                if token in SENTENCE_END_PUNCTUATION or len(tokens) >= MAX_LEN:
                    #print ("Punc matched- "+token )
                    puncMatch = 1
                    while len(tokens) > MAX_LEN:
                        # Split into chunks of MAX_LEN
                        results.append({
                            "input": " ".join(tokens[:MAX_LEN]),
                            "target": " ".join(tags[:MAX_LEN])
                        })
                        tokens = tokens[MAX_LEN:]
                        tags = tags[MAX_LEN:]
                
    		        # Append remaining chunk as a sentence
                    if tokens:
                        results.append({
                            "input": " ".join(tokens),
                            "target": " ".join(tags)
                        })
                        tokens = []
                        tags = []

    # Add any leftover sentence
    #print("PuncMatch= "+str(puncMatch))
    if tokens:
        if (puncMatch == 0):
            chunk_size = 8
            for i in range(0, len(tokens), chunk_size):
                chunk_tokens = tokens[i:i + chunk_size]
                chunk_tags = tags[i:i + chunk_size]
                results.append({
                    "input": " ".join(chunk_tokens),
                    "target": " ".join(chunk_tags)
                })
        else:
            results.append({
                "input": " ".join(tokens),
                "target": " ".join(tags)
            })
    return results


# === Example usage ===
file_path = sys.argv[1]
data = process_file_without_language(file_path, tag_col_index=9)

with open(sys.argv[2], "w", encoding="utf-8") as f:
    json.dump(data, f, ensure_ascii=False, indent=2)

#print(f"✅ Done. {len(data)} examples saved to 'output_auto_lang.json'.")
#print(json.dumps(data[:1], ensure_ascii=False, indent=2))

