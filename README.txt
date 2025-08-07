DISRPT 2025 - Participation Submission
AU-KBC Research Centre
---------------------------------------
Task - Segment Identification (Task 1)
--------------------------------------------------

This folder contains codes and scripts , our system outputs and our model for the Task 1 submission

I.Training
----------- 
The folder named "training-scripts" consists of the python codes and bash scripts for training the system as we did at our end. 

The training script/bash file to run the training is as follows: trainSeg.sh

How to use:
-------------
sh trainSeg.sh ~/disrpt-scripts/

where "~/disrpt-scripts" is the folder path which contains the data folder.

The requires installation of python libraries:
  a. transformers 
  b. datasets 
  c. sentencepiece
  d. seqeval
  e. torch 
  f. pandas 
  g. scikit-learn
  h. nltk

We have used 'xlm-roberta-base' model for our training.


II.Inference
------------ 
The folder named  "inference-scripts" consists of python code and bash scripts for running the inference on train and dev data.

There are 4 bash scripts to run the inference on test and dev data each having two script files, one for *.tok files and other for *.conllu files. They are as follows:

	(a) devSeg_connlu.sh   - for Dev data having *.conllu format files  
	(b) devSeg_tok.sh      - for Dev data having *.tok format files
	(c) testSeg_connlu.sh  - for Test data having *.conllu format files
	(d) testSeg_tok.sh     - for Test data having *.tok format files


How to use:
-----------
	(a) sh devSeg_connlu.sh ~/disrpt-scripts
	(b) sh devSeg_tok.sh ~/disrpt-scripts
	(c) sh testSeg_connlu.sh ~/disrpt-scripts
	(d) sh testSeg_tok.sh ~/disrpt-scripts


III. Our Model is inside the folder titled : "our-model"

IV. Our system runs output is put inside the folder titled "our-system-outputs"




