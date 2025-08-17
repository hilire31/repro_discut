#!/bin/bash

basepath_arg="$1"
model="our-model/connIdent-aukbc-model"

python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/deu.pdtb.pcc/deu.pdtb.pcc_test.conllu $basepath_arg/output_data/deu.pdtb.pcc/deu.pdtb.pcc_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/eng.pdtb.gum/eng.pdtb.gum_test.conllu $basepath_arg/output_data/eng.pdtb.gum/eng.pdtb.gum_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/eng.pdtb.tedm/eng.pdtb.tedm_test.conllu $basepath_arg/output_data/eng.pdtb.tedm/eng.pdtb.tedm_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/ita.pdtb.luna/ita.pdtb.luna_test.conllu $basepath_arg/output_data/ita.pdtb.luna/ita.pdtb.luna_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test.conllu $basepath_arg/output_data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/pol.iso.pdc/pol.iso.pdc_test.conllu $basepath_arg/output_data/pol.iso.pdc/pol.iso.pdc_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/por.pdtb.crpc/por.pdtb.crpc_test.conllu $basepath_arg/output_data/por.pdtb.crpc/por.pdtb.crpc_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/por.pdtb.tedm/por.pdtb.tedm_test.conllu $basepath_arg/output_data/por.pdtb.tedm/por.pdtb.tedm_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/tha.pdtb.tdtb/tha.pdtb.tdtb_test.conllu $basepath_arg/output_data/tha.pdtb.tdtb/tha.pdtb.tdtb_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/tur.pdtb.tedm/tur.pdtb.tedm_test.conllu $basepath_arg/output_data/tur.pdtb.tedm/tur.pdtb.tedm_test.conllu
python3 conn_inference_conllu.py $basepath_arg/$model $basepath_arg/data/zho.pdtb.ted/zho.pdtb.ted_test.conllu  $basepath_arg/output_data/zho.pdtb.ted/zho.pdtb.ted_test.conllu 
