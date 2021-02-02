#!/bin/sh

python3 ./eval/convert.py $1 $2
python3 ./eval/task3_scorer_onefile.py -s ./eval/official_prediction.txt -r ./data/protechn_corpus_eval/test -t ./data/protechn_corpus_eval/propaganda-techniques-names.txt
