import json
import re

# Texte brut
data_text = """
{
    "doc_name": "spa.rst.rststb_test.conllu",
    "seg_type": "EDUs",
    "options": {
        "s": false
    },
    "tok_count": 8111,
    "gold_count": 460,
    "pred_count": 451,
    "precision": 0.9246119733924612,
    "recall": 0.9065217391304348,
    "f_score": 0.9154774972557629
}
{
    "doc_name": "rus.rst.rrt_test.conllu",
    "seg_type": "EDUs",
    "options": {
        "s": false
    },
    "tok_count": 29023,
    "gold_count": 3240,
    "pred_count": 3212,
    "precision": 0.924346201743462,
    "recall": 0.9163580246913581,
    "f_score": 0.9203347799132052
}
{
    "doc_name": "spa.rst.sctb_test.conllu",
    "seg_type": "EDUs",
    "options": {
        "s": false
    },
    "tok_count": 3814,
    "gold_count": 168,
    "pred_count": 159,
    "precision": 0.8742138364779874,
    "recall": 0.8273809523809523,
    "f_score": 0.8501529051987767
}
"""

# Découper en blocs JSON grâce à une regex
json_array_text = "[" + re.sub(r"}\s*{", "}, {", data_text.strip(),flags=re.S  | re.M) + "]"
data_list  = json.loads(json_array_text)
for item in data_list:
    print(f"{item['doc_name']}: P={item['precision']:.3f}, R={item['recall']:.3f}, F={item['f_score']:.3f}")


