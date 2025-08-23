#!/bin/bash





basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
outpath_arg="./data_out"
#model="our-model/segIdent-aukbc-model"
model="/projects/andiamo/froussea/repro_discut/connectiveIdentification-Task2/xlm-roberta-connective-10epochnew1"
ext_arg="$1" #".tok"


echo "starting disrpt_eval_2024.py with connective identification with $ext_arg"
python3 disrpt_eval_2024.py -g $basepath_arg/deu.pdtb.pcc/deu.pdtb.pcc_test$ext_arg -t C -p $outpath_arg/deu.pdtb.pcc/deu.pdtb.pcc_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.pdtb.gentle/eng.pdtb.gentle_test$ext_arg -t C -p $outpath_arg/eng.pdtb.gentle/eng.pdtb.gentle_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.pdtb.gum/eng.pdtb.gum_test$ext_arg -t C -p $outpath_arg/eng.pdtb.gum/eng.pdtb.gum_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.pdtb.pdtb/eng.pdtb.pdtb_test$ext_arg -t C -p $outpath_arg/eng.pdtb.pdtb/eng.pdtb.pdtb_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.pdtb.tedm/eng.pdtb.tedm_test$ext_arg -t C -p $outpath_arg/eng.pdtb.tedm/eng.pdtb.tedm_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/ita.pdtb.luna/ita.pdtb.luna_test$ext_arg -t C -p $outpath_arg/ita.pdtb.luna/ita.pdtb.luna_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test$ext_arg -t C -p $outpath_arg/pcm.pdtb.disconaija/pcm.pdtb.disconaija_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/pol.iso.pdc/pol.iso.pdc_test$ext_arg -t C -p $outpath_arg/pol.iso.pdc/pol.iso.pdc_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/por.pdtb.crpc/por.pdtb.crpc_test$ext_arg -t C -p $outpath_arg/por.pdtb.crpc/por.pdtb.crpc_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/por.pdtb.tedm/por.pdtb.tedm_test$ext_arg -t C -p $outpath_arg/por.pdtb.tedm/por.pdtb.tedm_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_test$ext_arg -t C -p $outpath_arg/tha.pdtb.tdtb/tha.pdtb.tdtb_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/tur.pdtb.tedm/tur.pdtb.tedm_test$ext_arg -t C -p $outpath_arg/tur.pdtb.tedm/tur.pdtb.tedm_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/zho.pdtb.ted/zho.pdtb.ted_test$ext_arg -t C -p $outpath_arg/zho.pdtb.ted/zho.pdtb.ted_test$ext_arg 
python3 disrpt_eval_2024.py -g $basepath_arg/zho.pdtb.cdtb/zho.pdtb.cdtb_test$ext_arg -t C -p $outpath_arg/zho.pdtb.cdtb/zho.pdtb.cdtb_test$ext_arg 
