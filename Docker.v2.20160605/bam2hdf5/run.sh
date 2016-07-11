#!/bin/bash
source activate gitar
if [ $# -eq 4 ]; then 
  HiCtool_hifive.arg.py $1 $2 $3 $4
fi

