#!/usr/bin/python
"""
Program that combines multiple dense matrices (one value per line) into a single sparse matrix.
Each dense matrix file contains chromosome identifier and a file name per line, tab-delimited.
The output is streamed to stdout.
"""

import sys
import os
import math
from operator import itemgetter

input_list_file = sys.argv[1] ## file listing chr\tobservedmatrixfilename\tnormalized per line
tag = sys.argv[2]
bin_size = int(sys.argv[3]) ## eg. 40000

FH_input_list_file = open(input_list_file,'r')

if tag=='observed':
  file_column = 1
elif tag=='normalized_fend':
  file_column = 2
elif tag=='normalized_enrich':
  file_column = 3 
else:
  print("wrong tag.")
  sys.exit(1)
  
columns = [0,file_column]
input_list = dict([itemgetter(*columns)(line.strip().split('\t')) for line in FH_input_list_file])  ## chr\tmatrixfilename
FH_input_list_file.close()

for chr,fname in input_list.iteritems():

    # first just count the lines
    fh=open(fname,'r')
    lcount=0
    for line in fh:
      lcount+=1
    nbins = math.sqrt(lcount)
    largest_bin_start_pos = (nbins-1)*bin_size
    fh.close()

    # now print
    fh=open(fname,'r')
    bin1=0
    bin2=0
    for line in fh:
       val=float(line.strip())
       if(val != 0):
           print ( chr+'\t'+str(bin1)+'\t'+chr+'\t'+str(bin2)+'\t'+str(val))
       bin2+=bin_size
       if(bin2==largest_bin_start_pos):
           bin1+=bin_size
           bin2=0
    fh.close()


