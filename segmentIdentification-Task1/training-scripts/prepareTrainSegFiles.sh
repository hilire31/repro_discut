#!/bin/bash

#### This is the training data preparation for segmentation script (Task 1) for $ext_arg files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
outpath_arg="./data_out"
ext_arg="$1" #".tok"

python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/ces.rst.crdt/ces.rst.crdt_train$ext_arg $outpath_arg/ces.rst.crdt/ces.rst.crdt_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/deu.rst.pcc/deu.rst.pcc_train$ext_arg $outpath_arg/deu.rst.pcc/deu.rst.pcc_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.dep.scidtb/eng.dep.scidtb_train$ext_arg $outpath_arg/eng.dep.scidtb/eng.dep.scidtb_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.erst.gum/eng.erst.gum_train$ext_arg $outpath_arg/eng.erst.gum/eng.erst.gum_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.rst.oll/eng.rst.oll_train$ext_arg $outpath_arg/eng.rst.oll/eng.rst.oll_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.rst.rstdt/eng.rst.rstdt_train$ext_arg $outpath_arg/eng.rst.rstdt/eng.rst.rstdt_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.rst.sts/eng.rst.sts_train$ext_arg $outpath_arg/eng.rst.sts/eng.rst.sts_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.rst.umuc/eng.rst.umuc_train$ext_arg $outpath_arg/eng.rst.umuc/eng.rst.umuc_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.sdrt.msdc/eng.sdrt.msdc_train$ext_arg $outpath_arg/eng.sdrt.msdc/eng.sdrt.msdc_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eng.sdrt.stac/eng.sdrt.stac_train$ext_arg $outpath_arg/eng.sdrt.stac/eng.sdrt.stac_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/eus.rst.ert/eus.rst.ert_train$ext_arg $outpath_arg/eus.rst.ert/eus.rst.ert_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/fas.rst.prstc/fas.rst.prstc_train$ext_arg $outpath_arg/fas.rst.prstc/fas.rst.prstc_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/fra.sdrt.annodis/fra.sdrt.annodis_train$ext_arg $outpath_arg/fra.sdrt.annodis/fra.sdrt.annodis_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/nld.rst.nldt/nld.rst.nldt_train$ext_arg $outpath_arg/nld.rst.nldt/nld.rst.nldt_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/por.rst.cstn/por.rst.cstn_train$ext_arg $outpath_arg/por.rst.cstn/por.rst.cstn_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/rus.rst.rrt/rus.rst.rrt_train$ext_arg $outpath_arg/rus.rst.rrt/rus.rst.rrt_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/spa.rst.rststb/spa.rst.rststb_train$ext_arg $outpath_arg/spa.rst.rststb/spa.rst.rststb_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/spa.rst.sctb/spa.rst.sctb_train$ext_arg $outpath_arg/spa.rst.sctb/spa.rst.sctb_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/zho.dep.scidtb/zho.dep.scidtb_train$ext_arg $outpath_arg/zho.dep.scidtb/zho.dep.scidtb_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/zho.rst.gcdt/zho.rst.gcdt_train$ext_arg $outpath_arg/zho.rst.gcdt/zho.rst.gcdt_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/zho.rst.sctb/zho.rst.sctb_train$ext_arg $outpath_arg/zho.rst.sctb/zho.rst.sctb_train$ext_arg.json
python3 ./training-scripts/multiLing_conversion.py  $basepath_arg/fra.sdrt.summre/fra.sdrt.summre_train$ext_arg $outpath_arg/fra.sdrt.summre/fra.sdrt.summre_train$ext_arg.json


python3 ./training-scripts/concatejsonFiles.py  $outpath_arg/ces.rst.crdt/ces.rst.crdt_train$ext_arg.json $outpath_arg/deu.rst.pcc/deu.rst.pcc_train$ext_arg.json $outpath_arg/eng.dep.scidtb/eng.dep.scidtb_train$ext_arg.json $outpath_arg/eng.erst.gum/eng.erst.gum_train$ext_arg.json $outpath_arg/eng.rst.oll/eng.rst.oll_train$ext_arg.json $outpath_arg/eng.rst.rstdt/eng.rst.rstdt_train$ext_arg.json $outpath_arg/eng.rst.sts/eng.rst.sts_train$ext_arg.json $outpath_arg/eng.rst.umuc/eng.rst.umuc_train$ext_arg.json $outpath_arg/eng.sdrt.msdc/eng.sdrt.msdc_train$ext_arg.json $outpath_arg/eng.sdrt.stac/eng.sdrt.stac_train$ext_arg.json $outpath_arg/eus.rst.ert/eus.rst.ert_train$ext_arg.json $outpath_arg/fas.rst.prstc/fas.rst.prstc_train$ext_arg.json $outpath_arg/fra.sdrt.annodis/fra.sdrt.annodis_train$ext_arg.json $outpath_arg/fra.sdrt.summre/fra.sdrt.summre_train$ext_arg.json $outpath_arg/nld.rst.nldt/nld.rst.nldt_train$ext_arg.json $outpath_arg/por.rst.cstn/por.rst.cstn_train$ext_arg.json $outpath_arg/rus.rst.rrt/rus.rst.rrt_train$ext_arg.json $outpath_arg/spa.rst.rststb/spa.rst.rststb_train$ext_arg.json $outpath_arg/spa.rst.sctb/spa.rst.sctb_train$ext_arg.json $outpath_arg/zho.dep.scidtb/zho.dep.scidtb_train$ext_arg.json $outpath_arg/zho.rst.gcdt/zho.rst.gcdt_train$ext_arg.json $outpath_arg/zho.rst.sctb/zho.rst.sctb_train$ext_arg.json > $outpath_arg/seg_$ext_arg.train.json
