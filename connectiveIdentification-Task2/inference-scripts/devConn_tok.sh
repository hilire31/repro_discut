#!/bin/bash

basepath_arg="$1"
model="our-model/connIdent-aukbc-model"

python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/deu.pdtb.pcc/deu.pdtb.pcc_dev.tok $basepath_arg/output_data/deu.pdtb.pcc/deu.pdtb.pcc_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/eng.pdtb.gum/eng.pdtb.gum_dev.tok $basepath_arg/output_data/eng.pdtb.gum/eng.pdtb.gum_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/eng.pdtb.tedm/eng.pdtb.tedm_dev.tok $basepath_arg/output_data/eng.pdtb.tedm/eng.pdtb.tedm_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/ita.pdtb.luna/ita.pdtb.luna_dev.tok $basepath_arg/output_data/ita.pdtb.luna/ita.pdtb.luna_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev.tok $basepath_arg/output_data/pcm.pdtb.disconaija/pcm.pdtb.disconaija_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/pol.iso.pdc/pol.iso.pdc_dev.tok $basepath_arg/output_data/pol.iso.pdc/pol.iso.pdc_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/por.pdtb.crpc/por.pdtb.crpc_dev.tok $basepath_arg/output_data/por.pdtb.crpc/por.pdtb.crpc_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/por.pdtb.tedm/por.pdtb.tedm_dev.tok $basepath_arg/output_data/por.pdtb.tedm/por.pdtb.tedm_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_dev.tok $basepath_arg/output_data/tha.pdtb.tdtb/tha.pdtb.tdtb_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/tur.pdtb.tedm/tur.pdtb.tedm_dev.tok $basepath_arg/output_data/tur.pdtb.tedm/tur.pdtb.tedm_dev.tok
python3 conn_inference_tok.py $basepath_arg/$model $basepath_arg/zho.pdtb.ted/zho.pdtb.ted_dev.tok  $basepath_arg/output_data/zho.pdtb.ted/zho.pdtb.ted_dev.tok 
