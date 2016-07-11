#!/usr/bin/miniconda/envs/gitar/bin/python
"""
Program to normalize the data for a selected chromosome.
1) Generating heatmap objects (hic.cis_heatmap)
HiFive allows the user to pull data from a region and create a heatmap object.
2) Normalizing the data
Fend corrected counts and enrichment contact data are calculated.
"""

import hifive
import numpy as np
import sys
import os


HiC_norm_binning_hdf5_file = sys.argv[1] ## file HiC_norm_binning.hdf5
ch = sys.argv[2] ## eg. '6'
bin_size = int(sys.argv[3]) ## eg. 40000
chrlen_file = sys.argv[4] ## file containing chr\tlen per line.
outdir=sys.argv[5]

FH_chrlen_file = open(chrlen_file,'r')
chromosomes = dict((k,int(v)) for k,v in dict([line.strip().split('\t') for line in FH_chrlen_file]).iteritems())


if not os.path.exists(outdir):
    os.mkdir(outdir)

def save_matrix(n, matrix, out_file):
    """
    Function to save a square matrix in a .txt file. 
    The matrix is reshaped by rows and saved in a vector.
    Inputs:
        n:          number of rows (or columns) of the matrix
        matrix:     input matrix to be saved
        out_file:   output file name in .txt format
    Output: 
        .txt file containing the saved list          
    """
    vect = []
    for row in xrange(n):
        for col in xrange(n):
            vect.append(matrix[row,col])
    
    with open (out_file,'w') as fout:
        for i in xrange(n**2):
            fout.write('%s\n' %vect[i])



chromosome = 'chr' + ch
start_pos = 0
end_pos = (chromosomes[ch]/1000000)*1000000

start_part = str(float(start_pos)/float(1000000))
end_part = str(float(end_pos)/float(1000000))
binsize_str = str(float(bin_size)/float(1000000))

# Enrichment data
hic = hifive.HiC(HiC_norm_binning_hdf5_file)
heatmap_enrich = hic.cis_heatmap(chrom=chromosome,
                                 start=start_pos,
                                 stop=end_pos,
                                 binsize=bin_size,
                                 arraytype='full',
                                 datatype='enrichment')

# Observed data
observed = heatmap_enrich[:,:,0] # observed contact data extracted from the heatmap object
n = len(observed)
save_matrix(n, observed, outdir+ '/HiCtool_observed_contact_matrix_' + chromosome + '_' + binsize_str + 'mb_' + start_part + 'mb_' + end_part + 'mb.txt')

# Expected enrichment data (fend corrections and distance property)
expected_enrich = heatmap_enrich[:,:,1] # expected enrichment contact data extracted from the heatmap object
n = len(expected_enrich)
save_matrix(n, expected_enrich, outdir+ '/HiCtool_expected_enrich_contact_matrix_' + chromosome + '_' + binsize_str + 'mb_' + start_part + 'mb_' + end_part + 'mb.txt')

# Raw data
hic = hifive.HiC(HiC_norm_binning_hdf5_file)
heatmap_raw = hic.cis_heatmap(chrom=chromosome,
                              start=start_pos,
                              stop=end_pos,
                              binsize=bin_size,
                              arraytype='full',
                              datatype='raw')

# Expected raw (number of possible fend interactions)
expected_raw = heatmap_raw[:,:,1]
n = len(expected_raw)
scaling_factor = (np.sum(expected_raw)/2)/(n*(n-1)/2) # mean fend pairs in each bin

# Fend data
hic = hifive.HiC(HiC_norm_binning_hdf5_file)
heatmap_fend = hic.cis_heatmap(chrom=chromosome,
                               start=start_pos,
                               stop=end_pos,
                               binsize=bin_size,
                               arraytype='full',
                               datatype='fend')

# Expected fend (fend corrections)
expected_fend = heatmap_fend[:,:,1]/scaling_factor # fend correction values
n = len(expected_fend)
save_matrix(n, expected_fend, outdir+ '/HiCtool_expected_fend_contact_matrix_' + chromosome + '_' + binsize_str + 'mb_' + start_part + 'mb_' + end_part + 'mb.txt')


# Normalization

# Normalized fend contact matrix
normalized_fend = np.zeros((n,n))
for i in xrange(n):
    for j in xrange(n):
        if expected_fend[i][j] == 0:
            normalized_fend[i][j] = 0
        else:
            normalized_fend[i][j] = float(observed[i][j])/float(expected_fend[i][j])

save_matrix(n, normalized_fend, outdir+ '/HiCtool_normalized_fend_contact_matrix_' + chromosome + '_' + binsize_str + 'mb_' + start_part + 'mb_' + end_part + 'mb.txt')

# Normalized enrichment contact matrix
normalized_enrich = np.zeros((n,n))
for i in xrange(n):
    for j in xrange(n):
        if expected_enrich[i][j] == 0:
            normalized_enrich[i][j] = 0
        else:
            normalized_enrich[i][j] = float(observed[i][j])/float(expected_enrich[i][j])

save_matrix(n, normalized_enrich, outdir+ '/HiCtool_normalized_enrich_contact_matrix_' + chromosome + '_' + binsize_str + 'mb_' + start_part + 'mb_' + end_part + 'mb.txt')

