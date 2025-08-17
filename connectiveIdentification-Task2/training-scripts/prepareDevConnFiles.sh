#!/bin/bash

#### This is the dev data preparation for connective identification (Task 2) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/data/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="$1"

python3 multiLing_conversion.py $basepath_arg/data/deu.pdtb.pcc/deu.pdtb.pcc_dev.tok $basepath_arg/data/deu.pdtb.pcc/deu.pdtb.pcc_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/eng.pdtb.gum/eng.pdtb.gum_dev.tok $basepath_arg/data/eng.pdtb.gum/eng.pdtb.gum_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/eng.pdtb.tedm/eng.pdtb.tedm_dev.tok $basepath_arg/data/eng.pdtb.tedm/eng.pdtb.tedm_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/ita.pdtb.luna/ita.pdtb.luna_dev.tok $basepath_arg/data/ita.pdtb.luna/ita.pdtb.luna_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev.tok $basepath_arg/data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/pol.iso.pdc/pol.iso.pdc_dev.tok $basepath_arg/data/pol.iso.pdc/pol.iso.pdc_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/por.pdtb.crpc/por.pdtb.crpc_dev.tok $basepath_arg/data/por.pdtb.crpc/por.pdtb.crpc_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/por.pdtb.tedm/por.pdtb.tedm_dev.tok $basepath_arg/data/por.pdtb.tedm/por.pdtb.tedm_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/tha.pdtb.tdtb/tha.pdtb.tdtb_dev.tok $basepath_arg/data/tha.pdtb.tdtb/tha.pdtb.tdtb_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/tur.pdtb.tedm/tur.pdtb.tedm_dev.tok $basepath_arg/data/tur.pdtb.tedm/tur.pdtb.tedm_dev.tok_conn.json
python3 multiLing_conversion.py $basepath_arg/data/zho.pdtb.ted/zho.pdtb.ted_dev.tok $basepath_arg/data/zho.pdtb.ted/zho.pdtb.ted_dev.tok_conn.json

python3 concatejsonFiles.py $basepath_arg/data/deu.pdtb.pcc/deu.pdtb.pcc_dev.tok_conn.json $basepath_arg/data/eng.pdtb.gum/eng.pdtb.gum_dev.tok_conn.json $basepath_arg/data/eng.pdtb.tedm/eng.pdtb.tedm_dev.tok_conn.json $basepath_arg/data/ita.pdtb.luna/ita.pdtb.luna_dev.tok_conn.json $basepath_arg/data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev.tok_conn.json $basepath_arg/data/pol.iso.pdc/pol.iso.pdc_dev.tok_conn.json $basepath_arg/data/por.pdtb.crpc/por.pdtb.crpc_dev.tok_conn.json $basepath_arg/data/por.pdtb.tedm/por.pdtb.tedm_dev.tok_conn.json $basepath_arg/data/tha.pdtb.tdtb/tha.pdtb.tdtb_dev.tok_conn.json $basepath_arg/data/tur.pdtb.tedm/tur.pdtb.tedm_dev.tok_conn.json $basepath_arg/data/zho.pdtb.ted/zho.pdtb.ted_dev.tok_conn.json > $basepath_arg/conn_dev.json

