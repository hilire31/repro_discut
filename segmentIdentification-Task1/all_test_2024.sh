

#!/bin/bash





basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
#basepath_arg="/projects/andiamo/froussea/repro_discut/data_test"
outpath_arg="./data_out/"
#"./our-system-outputs"
#model="our-model/segIdent-aukbc-model"
model="/projects/andiamo/froussea/repro_discut/xlm-roberta-segmentation-new1"
ext_arg="$1" #".tok"


echo "starting disrpt_eval_2024.py with connective identification with $ext_arg"



python3 disrpt_eval_2024.py -g $basepath_arg/ces.rst.crdt/ces.rst.crdt_test$ext_arg -t S -p $outpath_arg/ces.rst.crdt/ces.rst.crdt_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/deu.rst.pcc/deu.rst.pcc_test$ext_arg -t S -p $outpath_arg/deu.rst.pcc/deu.rst.pcc_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.dep.covdtb/eng.dep.covdtb_test$ext_arg -t S -p $outpath_arg/eng.dep.covdtb/eng.dep.covdtb_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.dep.scidtb/eng.dep.scidtb_test$ext_arg -t S -p $outpath_arg/eng.dep.scidtb/eng.dep.scidtb_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.erst.gentle/eng.erst.gentle_test$ext_arg -t S -p $outpath_arg/eng.erst.gentle/eng.erst.gentle_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.erst.gum/eng.erst.gum_test$ext_arg -t S -p $outpath_arg/eng.erst.gum/eng.erst.gum_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.rst.oll/eng.rst.oll_test$ext_arg -t S -p $outpath_arg/eng.rst.oll/eng.rst.oll_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.rst.rstdt/eng.rst.rstdt_test$ext_arg -t S -p $outpath_arg/eng.rst.rstdt/eng.rst.rstdt_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.rst.sts/eng.rst.sts_test$ext_arg -t S -p $outpath_arg/eng.rst.sts/eng.rst.sts_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.rst.umuc/eng.rst.umuc_test$ext_arg -t S -p $outpath_arg/eng.rst.umuc/eng.rst.umuc_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.sdrt.msdc/eng.sdrt.msdc_test$ext_arg -t S -p $outpath_arg/eng.sdrt.msdc/eng.sdrt.msdc_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eng.sdrt.stac/eng.sdrt.stac_test$ext_arg -t S -p $outpath_arg/eng.sdrt.stac/eng.sdrt.stac_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/eus.rst.ert/eus.rst.ert_test$ext_arg -t S -p $outpath_arg/eus.rst.ert/eus.rst.ert_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/fas.rst.prstc/fas.rst.prstc_test$ext_arg -t S -p $outpath_arg/fas.rst.prstc/fas.rst.prstc_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/fra.sdrt.annodis/fra.sdrt.annodis_test$ext_arg -t S -p $outpath_arg/fra.sdrt.annodis/fra.sdrt.annodis_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/fra.sdrt.summre/fra.sdrt.summre_test$ext_arg -t S -p $outpath_arg/fra.sdrt.summre/fra.sdrt.summre_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/nld.rst.nldt/nld.rst.nldt_test$ext_arg -t S -p $outpath_arg/nld.rst.nldt/nld.rst.nldt_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/por.rst.cstn/por.rst.cstn_test$ext_arg -t S -p $outpath_arg/por.rst.cstn/por.rst.cstn_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/spa.rst.rststb/spa.rst.rststb_test$ext_arg -t S -p $outpath_arg/spa.rst.rststb/spa.rst.rststb_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/rus.rst.rrt/rus.rst.rrt_test$ext_arg -t S -p $outpath_arg/rus.rst.rrt/rus.rst.rrt_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/spa.rst.sctb/spa.rst.sctb_test$ext_arg -t S -p $outpath_arg/spa.rst.sctb/spa.rst.sctb_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/zho.dep.scidtb/zho.dep.scidtb_test$ext_arg -t S -p $outpath_arg/zho.dep.scidtb/zho.dep.scidtb_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/zho.rst.gcdt/zho.rst.gcdt_test$ext_arg -t S -p $outpath_arg/zho.rst.gcdt/zho.rst.gcdt_test$ext_arg
python3 disrpt_eval_2024.py -g $basepath_arg/zho.rst.sctb/zho.rst.sctb_test$ext_arg -t S -p $outpath_arg/zho.rst.sctb/zho.rst.sctb_test$ext_arg