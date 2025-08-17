#!/bin/bash

#### This is the dev data preparation for connective Identification (Task 2) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
outpath_arg="./data_out"
ext_arg="$1" #".tok"

python3 ./training-scripts/multiLing_conversion.py $basepath_arg/deu.pdtb.pcc/deu.pdtb.pcc_dev$ext_arg $outpath_arg/deu.pdtb.pcc/deu.pdtb.pcc_dev$ext_arg.conn.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.pdtb.gum/eng.pdtb.gum_dev$ext_arg $outpath_arg/eng.pdtb.gum/eng.pdtb.gum_dev$ext_arg.conn.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/ita.pdtb.luna/ita.pdtb.luna_dev$ext_arg $outpath_arg/ita.pdtb.luna/ita.pdtb.luna_dev$ext_arg.conn.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev$ext_arg $outpath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev$ext_arg.conn.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/pol.iso.pdc/pol.iso.pdc_dev$ext_arg $outpath_arg/pol.iso.pdc/pol.iso.pdc_dev$ext_arg.conn.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/por.pdtb.crpc/por.pdtb.crpc_dev$ext_arg $outpath_arg/por.pdtb.crpc/por.pdtb.crpc_dev$ext_arg.conn.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_dev$ext_arg $outpath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_dev$ext_arg.conn.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/zho.pdtb.ted/zho.pdtb.ted_dev$ext_arg $outpath_arg/zho.pdtb.ted/zho.pdtb.ted_dev$ext_arg.conn.json

python3 ./training-scripts/concatejsonFiles.py $outpath_arg/deu.pdtb.pcc/deu.pdtb.pcc_dev$ext_arg.conn.json $outpath_arg/eng.pdtb.gum/eng.pdtb.gum_dev$ext_arg.conn.json $outpath_arg/ita.pdtb.luna/ita.pdtb.luna_dev$ext_arg.conn.json $outpath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev$ext_arg.conn.json $outpath_arg/pol.iso.pdc/pol.iso.pdc_dev$ext_arg.conn.json $outpath_arg/por.pdtb.crpc/por.pdtb.crpc_dev$ext_arg.conn.json $outpath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_dev$ext_arg.conn.json $outpath_arg/zho.pdtb.ted/zho.pdtb.ted_dev$ext_arg.conn.json > $outpath_arg/con_$ext_arg.dev.json
