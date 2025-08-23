#!/bin/bash





basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
outpath_arg="./data_out"
#model="our-model/segIdent-aukbc-model"
model="/projects/andiamo/froussea/repro_discut/connectiveIdentification-Task2/xlm-roberta-connective-10epochnew1"

python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/deu.pdtb.pcc/deu.pdtb.pcc_test.conllu $outpath_arg/deu.pdtb.pcc/deu.pdtb.pcc_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/eng.pdtb.gentle/eng.pdtb.gentle_test.conllu $outpath_arg/eng.pdtb.gentle/eng.pdtb.gentle_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/eng.pdtb.gum/eng.pdtb.gum_test.conllu $outpath_arg/eng.pdtb.gum/eng.pdtb.gum_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/eng.pdtb.gum/eng.pdtb.pdtb_test.conllu $outpath_arg/eng.pdtb.gum/eng.pdtb.pdtb_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/eng.pdtb.tedm/eng.pdtb.tedm_test.conllu $outpath_arg/eng.pdtb.tedm/eng.pdtb.tedm_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/ita.pdtb.luna/ita.pdtb.luna_test.conllu $outpath_arg/ita.pdtb.luna/ita.pdtb.luna_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test.conllu $outpath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/pol.iso.pdc/pol.iso.pdc_test.conllu $outpath_arg/pol.iso.pdc/pol.iso.pdc_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/por.pdtb.crpc/por.pdtb.crpc_test.conllu $outpath_arg/por.pdtb.crpc/por.pdtb.crpc_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/por.pdtb.tedm/por.pdtb.tedm_test.conllu $outpath_arg/por.pdtb.tedm/por.pdtb.tedm_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_test.conllu $outpath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/tur.pdtb.tedm/tur.pdtb.tedm_test.conllu $outpath_arg/tur.pdtb.tedm/tur.pdtb.tedm_test.conllu
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/zho.pdtb.ted/zho.pdtb.ted_test.conllu  $outpath_arg/zho.pdtb.ted/zho.pdtb.ted_test.conllu 
python3 ./inference-scripts/conn_inference_conllu.py $model $basepath_arg/zho.pdtb.cdtb/zho.pdtb.cdtb_test.conllu  $outpath_arg/zho.pdtb.cdtb/zho.pdtb.cdtb_test.conllu 
