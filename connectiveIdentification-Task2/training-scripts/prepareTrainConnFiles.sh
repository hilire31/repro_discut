#!/bin/bash

#### This is the train data preparation for connective Identification (Task 2) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/data/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="$1"

python3 multiLing_conversion.py $basepath_arg/data/deu.pdtb.pcc/deu.pdtb.pcc_train.tok $basepath_arg/data/deu.pdtb.pcc/deu.pdtb.pcc_train.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/eng.pdtb.gum/eng.pdtb.gum_train.tok $basepath_arg/data/eng.pdtb.gum/eng.pdtb.gum_train.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/ita.pdtb.luna/ita.pdtb.luna_train.tok $basepath_arg/data/ita.pdtb.luna/ita.pdtb.luna_train.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_train.tok $basepath_arg/data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_train.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/pol.iso.pdc/pol.iso.pdc_train.tok $basepath_arg/data/pol.iso.pdc/pol.iso.pdc_train.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/por.pdtb.crpc/por.pdtb.crpc_train.tok $basepath_arg/data/por.pdtb.crpc/por.pdtb.crpc_train.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/tha.pdtb.tdtb/tha.pdtb.tdtb_train.tok $basepath_arg/data/tha.pdtb.tdtb/tha.pdtb.tdtb_train.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/zho.pdtb.ted/zho.pdtb.ted_train.tok $basepath_arg/data/zho.pdtb.ted/zho.pdtb.ted_train.tok_conn.json

python3 concatejsonFiles.py $basepath_arg/data/deu.pdtb.pcc/deu.pdtb.pcc_train.tok_conn.json $basepath_arg/data/eng.pdtb.gum/eng.pdtb.gum_train.tok_conn.json $basepath_arg/data/ita.pdtb.luna/ita.pdtb.luna_train.tok_conn.json $basepath_arg/data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_train.tok_conn.json $basepath_arg/data/pol.iso.pdc/pol.iso.pdc_train.tok_conn.json $basepath_arg/data/por.pdtb.crpc/por.pdtb.crpc_train.tok_conn.json $basepath_arg/data/tha.pdtb.tdtb/tha.pdtb.tdtb_train.tok_conn.json $basepath_arg/data/zho.pdtb.ted/zho.pdtb.ted_train.tok_conn.json > $basepath_arg/conn_train2.json 
