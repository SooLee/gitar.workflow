import dxpy, subprocess

@dxpy.entry_point('main')
def main ( HiC_norm_binning_hdf5, HiC_data_object_hdf5, fend_object_hdf5, contact_matrix_binsize, chrlen_file):
 
    dxpy.download_dxfile(HiC_norm_binning_hdf5, "HiC_norm_binning.hdf5")
    dxpy.download_dxfile(HiC_data_object_hdf5, "HiC_data_object.hdf5")
    dxpy.download_dxfile(fend_object_hdf5, "fend_object.hdf5")
    dxpy.download_dxfile(chrlen_file, "chrlen_file")
    
    FH_chrlen = open("chrlen_file","r") 
    chrs = [line.strip().split('\t')[0] for line in FH_chrlen];
    matrix_list_filename = "HiCtool_matrix_list.txt"
    fout = open(matrix_list_filename,"w")

    for chr in chrs:
      command = "cp -r /miniconda ~; cp -r /.conda ~; bash -c 'PATH=/home/dnanexus/miniconda/miniconda2/bin:$PATH; source activate gitar; which python; python /usr/bin/HiCtool_norm_contact_matrix.arg.py HiC_norm_binning.hdf5 {chromosome} {contact_matrix_binsize} chrlen_file .'".format(chromosome=chr, contact_matrix_binsize=contact_matrix_binsize)
      print(command)
      subprocess.call(command, shell=True)
      observed_matrix_filename = subprocess.check_output("ls -1 HiCtool_observed_contact_matrix_chr{chr}_*txt".format(chr=chr), shell=True).strip()
      normalized_fend_matrix_filename = subprocess.check_output("ls -1 HiCtool_normalized_fend_contact_matrix_chr{chr}_*txt".format(chr=chr), shell=True).strip()
      normalized_enrich_matrix_filename = subprocess.check_output("ls -1 HiCtool_normalized_enrich_contact_matrix_chr{chr}_*txt".format(chr=chr), shell=True).strip()
      fout.write("chr"+chr+"\t"+observed_matrix_filename+"\t"+normalized_fend_matrix_filename+"\t"+normalized_enrich_matrix_filename+'\n')

    fout.close()
    FH_chrlen.close()    

    all_contact_matrices_filename = "HiCtool_contact_matrices.tar.gz"
    subprocess.call("tar -czf {gzfile} HiCtool_*contact_matrix*txt".format(gzfile=all_contact_matrices_filename), shell=True)
    all_contact_matrices_file = dxpy.upload_local_file(all_contact_matrices_filename)
    matrix_list_file = dxpy.upload_local_file(matrix_list_filename)

    return { "all_contact_matrices": all_contact_matrices_file, "matrix_list": matrix_list_file } 


