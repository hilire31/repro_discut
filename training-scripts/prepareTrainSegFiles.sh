#!/bin/bash

#### This is the training data preparation for segmentation script (Task 1) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"

python3 multiLing_conversion.py  $basepath_arg/ces.rst.crdt/ces.rst.crdt_train.tok ./data_out/ces.rst.crdt/ces.rst.crdt_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/deu.rst.pcc/deu.rst.pcc_train.tok ./data_out/deu.rst.pcc/deu.rst.pcc_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.dep.scidtb/eng.dep.scidtb_train.tok ./data_out/eng.dep.scidtb/eng.dep.scidtb_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.erst.gum/eng.erst.gum_train.tok ./data_out/eng.erst.gum/eng.erst.gum_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.rst.oll/eng.rst.oll_train.tok ./data_out/eng.rst.oll/eng.rst.oll_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.rst.rstdt/eng.rst.rstdt_train.tok ./data_out/eng.rst.rstdt/eng.rst.rstdt_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.rst.sts/eng.rst.sts_train.tok ./data_out/eng.rst.sts/eng.rst.sts_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.rst.umuc/eng.rst.umuc_train.tok ./data_out/eng.rst.umuc/eng.rst.umuc_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.sdrt.msdc/eng.sdrt.msdc_train.tok ./data_out/eng.sdrt.msdc/eng.sdrt.msdc_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eng.sdrt.stac/eng.sdrt.stac_train.tok ./data_out/eng.sdrt.stac/eng.sdrt.stac_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/eus.rst.ert/eus.rst.ert_train.tok ./data_out/eus.rst.ert/eus.rst.ert_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/fas.rst.prstc/fas.rst.prstc_train.tok ./data_out/fas.rst.prstc/fas.rst.prstc_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/fra.sdrt.annodis/fra.sdrt.annodis_train.tok ./data_out/fra.sdrt.annodis/fra.sdrt.annodis_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/nld.rst.nldt/nld.rst.nldt_train.tok ./data_out/nld.rst.nldt/nld.rst.nldt_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/por.rst.cstn/por.rst.cstn_train.tok ./data_out/por.rst.cstn/por.rst.cstn_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/rus.rst.rrt/rus.rst.rrt_train.tok ./data_out/rus.rst.rrt/rus.rst.rrt_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/spa.rst.rststb/spa.rst.rststb_train.tok ./data_out/spa.rst.rststb/spa.rst.rststb_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/spa.rst.sctb/spa.rst.sctb_train.tok ./data_out/spa.rst.sctb/spa.rst.sctb_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/zho.dep.scidtb/zho.dep.scidtb_train.tok ./data_out/zho.dep.scidtb/zho.dep.scidtb_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/zho.rst.gcdt/zho.rst.gcdt_train.tok ./data_out/zho.rst.gcdt/zho.rst.gcdt_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/zho.rst.sctb/zho.rst.sctb_train.tok ./data_out/zho.rst.sctb/zho.rst.sctb_train.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/fra.sdrt.summre/fra.sdrt.summre_train.tok ./data_out/fra.sdrt.summre/fra.sdrt.summre_train.tok_new.json


python3 concatejsonFiles.py  ./data_out/ces.rst.crdt/ces.rst.crdt_train.tok_new.json ./data_out/deu.rst.pcc/deu.rst.pcc_train.tok_new.json ./data_out/eng.dep.scidtb/eng.dep.scidtb_train.tok_new.json ./data_out/eng.erst.gum/eng.erst.gum_train.tok_new.json ./data_out/eng.rst.oll/eng.rst.oll_train.tok_new.json ./data_out/eng.rst.rstdt/eng.rst.rstdt_train.tok_new.json ./data_out/eng.rst.sts/eng.rst.sts_train.tok_new.json ./data_out/eng.rst.umuc/eng.rst.umuc_train.tok_new.json ./data_out/eng.sdrt.msdc/eng.sdrt.msdc_train.tok_new.json ./data_out/eng.sdrt.stac/eng.sdrt.stac_train.tok_new.json ./data_out/eus.rst.ert/eus.rst.ert_train.tok_new.json ./data_out/fas.rst.prstc/fas.rst.prstc_train.tok_new.json ./data_out/fra.sdrt.annodis/fra.sdrt.annodis_train.tok_new.json ./data_out/fra.sdrt.summre/fra.sdrt.summre_train.tok_new.json ./data_out/nld.rst.nldt/nld.rst.nldt_train.tok_new.json ./data_out/por.rst.cstn/por.rst.cstn_train.tok_new.json ./data_out/rus.rst.rrt/rus.rst.rrt_train.tok_new.json ./data_out/spa.rst.rststb/spa.rst.rststb_train.tok_new.json ./data_out/spa.rst.sctb/spa.rst.sctb_train.tok_new.json ./data_out/zho.dep.scidtb/zho.dep.scidtb_train.tok_new.json ./data_out/zho.rst.gcdt/zho.rst.gcdt_train.tok_new.json ./data_out/zho.rst.sctb/zho.rst.sctb_train.tok_new.json > ./data_out/seg_train.json
