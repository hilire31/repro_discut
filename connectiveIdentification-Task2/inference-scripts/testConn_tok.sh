#!/bin/bash





basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
outpath_arg="./data_out"
#model="our-model/segIdent-aukbc-model"
model="/projects/andiamo/froussea/repro_discut/connectiveIdentification-Task2/xlm-roberta-connective-10epochnew1"

python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/deu.pdtb.pcc/deu.pdtb.pcc_test.tok $outpath_arg/deu.pdtb.pcc/deu.pdtb.pcc_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/eng.pdtb.gentle/eng.pdtb.gentle_test.tok $outpath_arg/eng.pdtb.gentle/eng.pdtb.gentle_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/eng.pdtb.gum/eng.pdtb.gum_test.tok $outpath_arg/eng.pdtb.gum/eng.pdtb.gum_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/eng.pdtb.pdtb/eng.pdtb.pdtb_test.tok $outpath_arg/eng.pdtb.gum/eng.pdtb.pdtb_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/eng.pdtb.tedm/eng.pdtb.tedm_test.tok $outpath_arg/eng.pdtb.tedm/eng.pdtb.tedm_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/ita.pdtb.luna/ita.pdtb.luna_test.tok $outpath_arg/ita.pdtb.luna/ita.pdtb.luna_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test.tok $outpath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/pol.iso.pdc/pol.iso.pdc_test.tok $outpath_arg/pol.iso.pdc/pol.iso.pdc_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/por.pdtb.crpc/por.pdtb.crpc_test.tok $outpath_arg/por.pdtb.crpc/por.pdtb.crpc_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/por.pdtb.tedm/por.pdtb.tedm_test.tok $outpath_arg/por.pdtb.tedm/por.pdtb.tedm_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_test.tok $outpath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/tur.pdtb.tedm/tur.pdtb.tedm_test.tok $outpath_arg/tur.pdtb.tedm/tur.pdtb.tedm_test.tok
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/zho.pdtb.ted/zho.pdtb.ted_test.tok  $outpath_arg/zho.pdtb.ted/zho.pdtb.ted_test.tok 
python3 ./inference-scripts/conn_inference_tok.py $model $basepath_arg/zho.pdtb.cdtb/zho.pdtb.cdtb_test.tok  $outpath_arg/zho.pdtb.cdtb/zho.pdtb.cdtb_test.tok 
