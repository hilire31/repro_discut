#!/bin/bash





basepath_arg="/projects/andiamo/corpus/sharedtask2025/data_test"
outpath_arg="./data_out"
#model="our-model/segIdent-aukbc-model"
model="/projects/andiamo/froussea/repro_discut/xlm-roberta-segmentation-new1"

python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/ces.rst.crdt/ces.rst.crdt_test.tok $outpath_arg/ces.rst.crdt/ces.rst.crdt_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/deu.rst.pcc/deu.rst.pcc_test.tok $outpath_arg/deu.rst.pcc/deu.rst.pcc_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.dep.scidtb/eng.dep.scidtb_test.tok $outpath_arg/eng.dep.scidtb/eng.dep.scidtb_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.erst.gum/eng.erst.gum_test.tok $outpath_arg/eng.erst.gum/eng.erst.gum_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.rst.oll/eng.rst.oll_test.tok $outpath_arg/eng.rst.oll/eng.rst.oll_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.rst.rstdt/eng.rst.rstdt_test.tok $outpath_arg/eng.rst.rstdt/eng.rst.rstdt_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.rst.sts/eng.rst.sts_test.tok $outpath_arg/eng.rst.sts/eng.rst.sts_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.rst.umuc/eng.rst.umuc_test.tok $outpath_arg/eng.rst.umuc/eng.rst.umuc_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.sdrt.msdc/eng.sdrt.msdc_test.tok $outpath_arg/eng.sdrt.msdc/eng.sdrt.msdc_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eng.sdrt.stac/eng.sdrt.stac_test.tok $outpath_arg/eng.sdrt.stac/eng.sdrt.stac_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/eus.rst.ert/eus.rst.ert_test.tok $outpath_arg/eus.rst.ert/eus.rst.ert_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/fas.rst.prstc/fas.rst.prstc_test.tok $outpath_arg/fas.rst.prstc/fas.rst.prstc_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/fra.sdrt.annodis/fra.sdrt.annodis_test.tok $outpath_arg/fra.sdrt.annodis/fra.sdrt.annodis_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/fra.sdrt.summre/fra.sdrt.summre_test.tok $outpath_arg/fra.sdrt.summre/fra.sdrt.summre_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/nld.rst.nldt/nld.rst.nldt_test.tok $outpath_arg/nld.rst.nldt/nld.rst.nldt_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/por.rst.cstn/por.rst.cstn_test.tok $outpath_arg/por.rst.cstn/por.rst.cstn_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/rus.rst.rrt/rus.rst.rrt_test.tok $outpath_arg/rus.rst.rrt/rus.rst.rrt_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/spa.rst.rststb/spa.rst.rststb_test.tok $outpath_arg/spa.rst.rststb/spa.rst.rststb_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/spa.rst.sctb/spa.rst.sctb_test.tok $outpath_arg/spa.rst.sctb/spa.rst.sctb_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/zho.dep.scidtb/zho.dep.scidtb_test.tok $outpath_arg/zho.dep.scidtb/zho.dep.scidtb_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/zho.rst.gcdt/zho.rst.gcdt_test.tok $outpath_arg/zho.rst.gcdt/zho.rst.gcdt_test.conllu
python3 ./inference-scripts/seg_inference_tok.py $model $basepath_arg/zho.rst.sctb/zho.rst.sctb_test.tok $outpath_arg/zho.rst.sctb/zho.rst.sctb_test.conllu
