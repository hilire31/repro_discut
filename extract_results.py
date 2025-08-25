import json
import re

def extract_json_from_txt(data_text):
    # Découper en blocs JSON grâce à une regex
    json_array_text = "[" + re.sub(r"}\s*{", "}, {", data_text.strip(),flags=re.S  | re.M) + "]"
    data_list  = json.loads(json_array_text)
    for item in data_list:
        print(f"{item['doc_name']}: P={item['precision']:.4f}, R={item['recall']:.4f}, F={item['f_score']:.4f}")
    
    for item in data_list:
        print(f"0,{item['f_score']*10000:.0f}")
    print(f"Moyenne: P={sum(d['precision'] for d in data_list)/len(data_list):.3f}, R={sum(d['recall'] for d in data_list)/len(data_list):.3f}, F={sum(d['f_score'] for d in data_list)/len(data_list):.3f}")
    return data_list



print("\nSEG : ")
print("tok : \n")
with open(f"results/seg/tok/{1}.txt", "r", encoding="utf-8") as f:
    data_text = f.read()


data_list=extract_json_from_txt(data_text)




    

print("\nconllu : \n")
with open(f"results/seg/conllu/{1}.txt", "r", encoding="utf-8") as f:
    data_text = f.read()


data_list=extract_json_from_txt(data_text)





print("\n\nCONN : ")
print("tok : \n")
with open(f"results/conn/tok/{1}.txt", "r", encoding="utf-8") as f:
    data_text = f.read()


data_list=extract_json_from_txt(data_text)



print("\nconllu : \n")
with open(f"results/conn/conllu/{1}.txt", "r", encoding="utf-8") as f:
    data_text = f.read()


data_list=extract_json_from_txt(data_text)
