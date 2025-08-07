#!/bin/bash

#### This is the dev data preparation for segmentation script (Task 1) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/data/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
outpath_arg="./data_out"

python3 ./training-scripts/multiLing_conversion.py $basepath_arg/ces.rst.crdt/ces.rst.crdt_dev.tok $outpath_arg/ces.rst.crdt/ces.rst.crdt_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/deu.rst.pcc/deu.rst.pcc_dev.tok $outpath_arg/deu.rst.pcc/deu.rst.pcc_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.dep.scidtb/eng.dep.scidtb_dev.tok $outpath_arg/eng.dep.scidtb/eng.dep.scidtb_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.erst.gum/eng.erst.gum_dev.tok $outpath_arg/eng.erst.gum/eng.erst.gum_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.rst.oll/eng.rst.oll_dev.tok $outpath_arg/eng.rst.oll/eng.rst.oll_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.rst.rstdt/eng.rst.rstdt_dev.tok $outpath_arg/eng.rst.rstdt/eng.rst.rstdt_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.rst.sts/eng.rst.sts_dev.tok $outpath_arg/eng.rst.sts/eng.rst.sts_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.rst.umuc/eng.rst.umuc_dev.tok $outpath_arg/eng.rst.umuc/eng.rst.umuc_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok $outpath_arg/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eng.sdrt.stac/eng.sdrt.stac_dev.tok $outpath_arg/eng.sdrt.stac/eng.sdrt.stac_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/eus.rst.ert/eus.rst.ert_dev.tok $outpath_arg/eus.rst.ert/eus.rst.ert_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/fas.rst.prstc/fas.rst.prstc_dev.tok $outpath_arg/fas.rst.prstc/fas.rst.prstc_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok $outpath_arg/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/nld.rst.nldt/nld.rst.nldt_dev.tok $outpath_arg/nld.rst.nldt/nld.rst.nldt_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/por.rst.cstn/por.rst.cstn_dev.tok $outpath_arg/por.rst.cstn/por.rst.cstn_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/rus.rst.rrt/rus.rst.rrt_dev.tok $outpath_arg/rus.rst.rrt/rus.rst.rrt_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/spa.rst.rststb/spa.rst.rststb_dev.tok $outpath_arg/spa.rst.rststb/spa.rst.rststb_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/spa.rst.sctb/spa.rst.sctb_dev.tok $outpath_arg/spa.rst.sctb/spa.rst.sctb_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/zho.dep.scidtb/zho.dep.scidtb_dev.tok $outpath_arg/zho.dep.scidtb/zho.dep.scidtb_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/zho.rst.gcdt/zho.rst.gcdt_dev.tok $outpath_arg/zho.rst.gcdt/zho.rst.gcdt_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/zho.rst.sctb/zho.rst.sctb_dev.tok $outpath_arg/zho.rst.sctb/zho.rst.sctb_dev.tok_new.json
python3 ./training-scripts/multiLing_conversion.py $basepath_arg/fra.sdrt.summre/fra.sdrt.summre_dev.tok $outpath_arg/fra.sdrt.summre/fra.sdrt.summre_dev.tok_new.json

python3 ./training-scripts/concatejsonFiles.py $outpath_arg/ces.rst.crdt/ces.rst.crdt_dev.tok_new.json $outpath_arg/deu.rst.pcc/deu.rst.pcc_dev.tok_new.json $outpath_arg/eng.dep.scidtb/eng.dep.scidtb_dev.tok_new.json $outpath_arg/eng.erst.gum/eng.erst.gum_dev.tok_new.json $outpath_arg/eng.rst.oll/eng.rst.oll_dev.tok_new.json $outpath_arg/eng.rst.rstdt/eng.rst.rstdt_dev.tok_new.json $outpath_arg/eng.rst.sts/eng.rst.sts_dev.tok_new.json $outpath_arg/eng.rst.umuc/eng.rst.umuc_dev.tok_new.json $outpath_arg/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok_new.json $outpath_arg/eng.sdrt.stac/eng.sdrt.stac_dev.tok_new.json $outpath_arg/eus.rst.ert/eus.rst.ert_dev.tok_new.json $outpath_arg/fas.rst.prstc/fas.rst.prstc_dev.tok_new.json $outpath_arg/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok_new.json $outpath_arg/fra.sdrt.summre/fra.sdrt.summre_dev.tok_new.json $outpath_arg/nld.rst.nldt/nld.rst.nldt_dev.tok_new.json $outpath_arg/por.rst.cstn/por.rst.cstn_dev.tok_new.json $outpath_arg/rus.rst.rrt/rus.rst.rrt_dev.tok_new.json $outpath_arg/spa.rst.rststb/spa.rst.rststb_dev.tok_new.json $outpath_arg/spa.rst.sctb/spa.rst.sctb_dev.tok_new.json $outpath_arg/zho.dep.scidtb/zho.dep.scidtb_dev.tok_new.json $outpath_arg/zho.rst.gcdt/zho.rst.gcdt_dev.tok_new.json $outpath_arg/zho.rst.sctb/zho.rst.sctb_dev.tok_new.json > $outpath_arg/seg_dev.json
