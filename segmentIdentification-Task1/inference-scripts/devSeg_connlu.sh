#!/bin/bash

basepath_arg="$1"
model="our-model/segIdent-aukbc-model"

python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/ces.rst.crdt/ces.rst.crdt_dev.conllu $basepath_arg/output_data/ces.rst.crdt/ces.rst.crdt_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/deu.rst.pcc/deu.rst.pcc_dev.conllu $basepath_arg/output_data/deu.rst.pcc/deu.rst.pcc_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.dep.scidtb/eng.dep.scidtb_dev.conllu $basepath_arg/output_data/eng.dep.scidtb/eng.dep.scidtb_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.erst.gum/eng.erst.gum_dev.conllu $basepath_arg/output_data/eng.erst.gum/eng.erst.gum_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.rst.oll/eng.rst.oll_dev.conllu $basepath_arg/output_data/eng.rst.oll/eng.rst.oll_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.rst.rstdt/eng.rst.rstdt_dev.conllu $basepath_arg/output_data/eng.rst.rstdt/eng.rst.rstdt_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.rst.sts/eng.rst.sts_dev.conllu $basepath_arg/output_data/eng.rst.sts/eng.rst.sts_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.rst.umuc/eng.rst.umuc_dev.conllu $basepath_arg/output_data/eng.rst.umuc/eng.rst.umuc_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.sdrt.msdc/eng.sdrt.msdc_dev.conllu $basepath_arg/output_data/eng.sdrt.msdc/eng.sdrt.msdc_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eng.sdrt.stac/eng.sdrt.stac_dev.conllu $basepath_arg/output_data/eng.sdrt.stac/eng.sdrt.stac_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/eus.rst.ert/eus.rst.ert_dev.conllu $basepath_arg/output_data/eus.rst.ert/eus.rst.ert_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/fas.rst.prstc/fas.rst.prstc_dev.conllu $basepath_arg/output_data/fas.rst.prstc/fas.rst.prstc_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/fra.sdrt.annodis/fra.sdrt.annodis_dev.conllu $basepath_arg/output_data/fra.sdrt.annodis/fra.sdrt.annodis_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/fra.sdrt.summre/fra.sdrt.summre_dev.conllu $basepath_arg/output_data/fra.sdrt.summre/fra.sdrt.summre_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/nld.rst.nldt/nld.rst.nldt_dev.conllu $basepath_arg/output_data/nld.rst.nldt/nld.rst.nldt_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/por.rst.cstn/por.rst.cstn_dev.conllu $basepath_arg/output_data/por.rst.cstn/por.rst.cstn_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/rus.rst.rrt/rus.rst.rrt_dev.conllu $basepath_arg/output_data/rus.rst.rrt/rus.rst.rrt_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/spa.rst.rststb/spa.rst.rststb_dev.conllu $basepath_arg/output_data/spa.rst.rststb/spa.rst.rststb_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/spa.rst.sctb/spa.rst.sctb_dev.conllu $basepath_arg/output_data/spa.rst.sctb/spa.rst.sctb_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/zho.dep.scidtb/zho.dep.scidtb_dev.conllu $basepath_arg/output_data/zho.dep.scidtb/zho.dep.scidtb_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/zho.rst.gcdt/zho.rst.gcdt_dev.conllu $basepath_arg/output_data/zho.rst.gcdt/zho.rst.gcdt_dev.conllu
python3 seg_inference_conllu.py $basepath_arg/$model $basepath_arg/zho.rst.sctb/zho.rst.sctb_dev.conllu $basepath_arg/output_data/zho.rst.sctb/zho.rst.sctb_dev.conllu
