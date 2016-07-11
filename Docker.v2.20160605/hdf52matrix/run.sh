#!/bin/bash
source activate gitar
if [ $# -eq 5 ]; then 
  HiCtool_norm_contact_matrix.arg.py $1 $2 $3 $4 $5
fi

