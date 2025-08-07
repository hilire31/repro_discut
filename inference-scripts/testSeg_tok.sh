#!/bin/bash

basepath_arg="$1"
model="our-model/segIdent-aukbc-model"

python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/ces.rst.crdt/ces.rst.crdt_test.tok $basepath_arg/output_data/ces.rst.crdt/ces.rst.crdt_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/deu.rst.pcc/deu.rst.pcc_test.tok $basepath_arg/output_data/deu.rst.pcc/deu.rst.pcc_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.dep.scidtb/eng.dep.scidtb_test.tok $basepath_arg/output_data/eng.dep.scidtb/eng.dep.scidtb_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.erst.gum/eng.erst.gum_test.tok $basepath_arg/output_data/eng.erst.gum/eng.erst.gum_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.oll/eng.rst.oll_test.tok $basepath_arg/output_data/eng.rst.oll/eng.rst.oll_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.rstdt/eng.rst.rstdt_test.tok $basepath_arg/output_data/eng.rst.rstdt/eng.rst.rstdt_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.sts/eng.rst.sts_test.tok $basepath_arg/output_data/eng.rst.sts/eng.rst.sts_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.rst.umuc/eng.rst.umuc_test.tok $basepath_arg/output_data/eng.rst.umuc/eng.rst.umuc_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.sdrt.msdc/eng.sdrt.msdc_test.tok $basepath_arg/output_data/eng.sdrt.msdc/eng.sdrt.msdc_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eng.sdrt.stac/eng.sdrt.stac_test.tok $basepath_arg/output_data/eng.sdrt.stac/eng.sdrt.stac_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/eus.rst.ert/eus.rst.ert_test.tok $basepath_arg/output_data/eus.rst.ert/eus.rst.ert_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/fas.rst.prstc/fas.rst.prstc_test.tok $basepath_arg/output_data/fas.rst.prstc/fas.rst.prstc_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/fra.sdrt.annodis/fra.sdrt.annodis_test.tok $basepath_arg/output_data/fra.sdrt.annodis/fra.sdrt.annodis_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/fra.sdrt.summre/fra.sdrt.summre_test.tok $basepath_arg/output_data/fra.sdrt.summre/fra.sdrt.summre_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/nld.rst.nldt/nld.rst.nldt_test.tok $basepath_arg/output_data/nld.rst.nldt/nld.rst.nldt_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/por.rst.cstn/por.rst.cstn_test.tok $basepath_arg/output_data/por.rst.cstn/por.rst.cstn_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/rus.rst.rrt/rus.rst.rrt_test.tok $basepath_arg/output_data/rus.rst.rrt/rus.rst.rrt_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/spa.rst.rststb/spa.rst.rststb_test.tok $basepath_arg/output_data/spa.rst.rststb/spa.rst.rststb_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/spa.rst.sctb/spa.rst.sctb_test.tok $basepath_arg/output_data/spa.rst.sctb/spa.rst.sctb_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/zho.dep.scidtb/zho.dep.scidtb_test.tok $basepath_arg/output_data/zho.dep.scidtb/zho.dep.scidtb_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/zho.rst.gcdt/zho.rst.gcdt_test.tok $basepath_arg/output_data/zho.rst.gcdt/zho.rst.gcdt_test.tok
python3 seg_inference_tok.py $basepath_arg/$model $basepath_arg/data/zho.rst.sctb/zho.rst.sctb_test.tok $basepath_arg/output_data/zho.rst.sctb/zho.rst.sctb_test.tok
