#!/bin/bash

basepath_arg="$1"
model="our-model/segIdent-aukbc-model"

python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/ces.rst.crdt/ces.rst.crdt_dev.tok $basepath_arg/output_data/ces.rst.crdt/ces.rst.crdt_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/deu.rst.pcc/deu.rst.pcc_dev.tok $basepath_arg/output_data/deu.rst.pcc/deu.rst.pcc_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.dep.scidtb/eng.dep.scidtb_dev.tok $basepath_arg/output_data/eng.dep.scidtb/eng.dep.scidtb_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.erst.gum/eng.erst.gum_dev.tok $basepath_arg/output_data/eng.erst.gum/eng.erst.gum_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.oll/eng.rst.oll_dev.tok $basepath_arg/output_data/eng.rst.oll/eng.rst.oll_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.rstdt/eng.rst.rstdt_dev.tok $basepath_arg/output_data/eng.rst.rstdt/eng.rst.rstdt_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.sts/eng.rst.sts_dev.tok $basepath_arg/output_data/eng.rst.sts/eng.rst.sts_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.umuc/eng.rst.umuc_dev.tok $basepath_arg/output_data/eng.rst.umuc/eng.rst.umuc_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok $basepath_arg/output_data/eng.sdrt.msdc/eng.sdrt.msdc_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.sdrt.stac/eng.sdrt.stac_dev.tok $basepath_arg/output_data/eng.sdrt.stac/eng.sdrt.stac_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eus.rst.ert/eus.rst.ert_dev.tok $basepath_arg/output_data/eus.rst.ert/eus.rst.ert_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/fas.rst.prstc/fas.rst.prstc_dev.tok $basepath_arg/output_data/fas.rst.prstc/fas.rst.prstc_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok $basepath_arg/output_data/fra.sdrt.annodis/fra.sdrt.annodis_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/fra.sdrt.summre/fra.sdrt.summre_dev.tok $basepath_arg/output_data/fra.sdrt.summre/fra.sdrt.summre_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/nld.rst.nldt/nld.rst.nldt_dev.tok $basepath_arg/output_data/nld.rst.nldt/nld.rst.nldt_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/por.rst.cstn/por.rst.cstn_dev.tok $basepath_arg/output_data/por.rst.cstn/por.rst.cstn_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/rus.rst.rrt/rus.rst.rrt_dev.tok $basepath_arg/output_data/rus.rst.rrt/rus.rst.rrt_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/spa.rst.rststb/spa.rst.rststb_dev.tok $basepath_arg/output_data/spa.rst.rststb/spa.rst.rststb_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/spa.rst.sctb/spa.rst.sctb_dev.tok $basepath_arg/output_data/spa.rst.sctb/spa.rst.sctb_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/zho.dep.scidtb/zho.dep.scidtb_dev.tok $basepath_arg/output_data/zho.dep.scidtb/zho.dep.scidtb_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/zho.rst.gcdt/zho.rst.gcdt_dev.tok $basepath_arg/output_data/zho.rst.gcdt/zho.rst.gcdt_dev.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/zho.rst.sctb/zho.rst.sctb_dev.tok $basepath_arg/output_data/zho.rst.sctb/zho.rst.sctb_dev.tok
