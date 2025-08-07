#!/bin/bash

#### This is the dev data preparation for segmentation script (Task 1) for .tok files 
#### Get the  base path upto the "data" folder as an argument (Eg: If the data folder is in the path /home/work/disrpt2025/data/ then the basepath_arg is /home/work/disrpt2025 )

basepath_arg="$1"

python3 multiLing_conversion.py  $basepath_arg/data/ces.rst.crdt/ces.rst.crdt_dev.tok  $basepath_arg/data/ces.rst.crdt/ces.rst.crdt_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/deu.rst.pcc/deu.rst.pcc_dev.tok  $basepath_arg/data/deu.rst.pcc/deu.rst.pcc_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.dep.scidtb/eng.dep.scidtb_dev.tok  $basepath_arg/data/eng.dep.scidtb/eng.dep.scidtb_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.erst.gum/eng.erst.gum_dev.tok  $basepath_arg/data/eng.erst.gum/eng.erst.gum_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.rst.oll/eng.rst.oll_dev.tok  $basepath_arg/data/eng.rst.oll/eng.rst.oll_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.rst.rstdt/eng.rst.rstdt_dev.tok  $basepath_arg/data/eng.rst.rstdt/eng.rst.rstdt_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.rst.sts/eng.rst.sts_dev.tok  $basepath_arg/data/eng.rst.sts/eng.rst.sts_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.rst.umuc/eng.rst.umuc_dev.tok  $basepath_arg/data/eng.rst.umuc/eng.rst.umuc_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok  $basepath_arg/data/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eng.sdrt.stac/eng.sdrt.stac_dev.tok  $basepath_arg/data/eng.sdrt.stac/eng.sdrt.stac_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/eus.rst.ert/eus.rst.ert_dev.tok  $basepath_arg/data/eus.rst.ert/eus.rst.ert_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/fas.rst.prstc/fas.rst.prstc_dev.tok  $basepath_arg/data/fas.rst.prstc/fas.rst.prstc_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok  $basepath_arg/data/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/nld.rst.nldt/nld.rst.nldt_dev.tok  $basepath_arg/data/nld.rst.nldt/nld.rst.nldt_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/por.rst.cstn/por.rst.cstn_dev.tok  $basepath_arg/data/por.rst.cstn/por.rst.cstn_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/rus.rst.rrt/rus.rst.rrt_dev.tok  $basepath_arg/data/rus.rst.rrt/rus.rst.rrt_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/spa.rst.rststb/spa.rst.rststb_dev.tok  $basepath_arg/data/spa.rst.rststb/spa.rst.rststb_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/spa.rst.sctb/spa.rst.sctb_dev.tok  $basepath_arg/data/spa.rst.sctb/spa.rst.sctb_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/zho.dep.scidtb/zho.dep.scidtb_dev.tok  $basepath_arg/data/zho.dep.scidtb/zho.dep.scidtb_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/zho.rst.gcdt/zho.rst.gcdt_dev.tok  $basepath_arg/data/zho.rst.gcdt/zho.rst.gcdt_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/zho.rst.sctb/zho.rst.sctb_dev.tok  $basepath_arg/data/zho.rst.sctb/zho.rst.sctb_dev.tok_new.json
python3 multiLing_conversion.py  $basepath_arg/data/fra.sdrt.summre/fra.sdrt.summre_dev.tok  $basepath_arg/data/fra.sdrt.summre/fra.sdrt.summre_dev.tok_new.json

python3 concatejsonFiles.py $basepath_arg/data/ces.rst.crdt/ces.rst.crdt_dev.tok_new.json $basepath_arg/data/deu.rst.pcc/deu.rst.pcc_dev.tok_new.json $basepath_arg/data/eng.dep.scidtb/eng.dep.scidtb_dev.tok_new.json $basepath_arg/data/eng.erst.gum/eng.erst.gum_dev.tok_new.json $basepath_arg/data/eng.rst.oll/eng.rst.oll_dev.tok_new.json $basepath_arg/data/eng.rst.rstdt/eng.rst.rstdt_dev.tok_new.json $basepath_arg/data/eng.rst.sts/eng.rst.sts_dev.tok_new.json $basepath_arg/data/eng.rst.umuc/eng.rst.umuc_dev.tok_new.json $basepath_arg/data/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok_new.json $basepath_arg/data/eng.sdrt.stac/eng.sdrt.stac_dev.tok_new.json $basepath_arg/data/eus.rst.ert/eus.rst.ert_dev.tok_new.json $basepath_arg/data/fas.rst.prstc/fas.rst.prstc_dev.tok_new.json $basepath_arg/data/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok_new.json $basepath_arg/data/fra.sdrt.summre/fra.sdrt.summre_dev.tok_new.json $basepath_arg/data/nld.rst.nldt/nld.rst.nldt_dev.tok_new.json $basepath_arg/data/por.rst.cstn/por.rst.cstn_dev.tok_new.json $basepath_arg/data/rus.rst.rrt/rus.rst.rrt_dev.tok_new.json $basepath_arg/data/spa.rst.rststb/spa.rst.rststb_dev.tok_new.json $basepath_arg/data/spa.rst.sctb/spa.rst.sctb_dev.tok_new.json $basepath_arg/data/zho.dep.scidtb/zho.dep.scidtb_dev.tok_new.json $basepath_arg/data/zho.rst.gcdt/zho.rst.gcdt_dev.tok_new.json $basepath_arg/data/zho.rst.sctb/zho.rst.sctb_dev.tok_new.json > $basepath_arg/seg_dev.json
