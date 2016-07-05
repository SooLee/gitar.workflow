import dxpy, subprocess

@dxpy.entry_point('main')
def main ( HiC_norm_binning_hdf5, HiC_data_object_hdf5, fend_object_hdf5, chromosome, contact_matrix_binsize, chrlen_file):
 
    dxpy.download_dxfile(HiC_norm_binning_hdf5, "HiC_norm_binning.hdf5")
    dxpy.download_dxfile(HiC_data_object_hdf5, "HiC_data_object.hdf5")
    dxpy.download_dxfile(fend_object_hdf5, "fend_object.hdf5")
    dxpy.download_dxfile(chrlen_file, "chrlen_file")
    
    
    command = "cp -r /miniconda ~; cp -r /.conda ~; bash -c 'PATH=/home/dnanexus/miniconda/miniconda2/bin:$PATH; source activate gitar; which python; python /usr/bin/HiCtool_norm_contact_matrix.arg.py HiC_norm_binning.hdf5 {chromosome} {contact_matrix_binsize} chrlen_file .'".format(chromosome=chromosome, contact_matrix_binsize=contact_matrix_binsize)
    print(command)
    subprocess.call(command, shell=True)
    
    observed_contact_matrix_filename = subprocess.check_output("ls -1 HiCtool_observed_contact_matrix*.txt",shell=True).strip()
    normalized_fend_contact_matrix_filename = subprocess.check_output("ls -1 HiCtool_normalized_fend_contact_matrix*.txt",shell=True).strip()
    normalized_enrich_contact_matrix_filename = subprocess.check_output("ls -1 HiCtool_normalized_enrich_contact_matrix*.txt",shell=True).strip()
    expected_fend_contact_matrix_filename = subprocess.check_output("ls -1 HiCtool_expected_fend_contact_matrix*.txt",shell=True).strip()
    expected_enrich_contact_matrix_filename = subprocess.check_output("ls -1 HiCtool_expected_enrich_contact_matrix*.txt",shell=True).strip()
    
    observed_contact_matrix_file = dxpy.upload_local_file(observed_contact_matrix_filename)
    normalized_fend_contact_matrix_file = dxpy.upload_local_file(normalized_fend_contact_matrix_filename)
    normalized_enrich_contact_matrix_file = dxpy.upload_local_file(normalized_enrich_contact_matrix_filename)
    expected_fend_contact_matrix_file =  dxpy.upload_local_file(expected_fend_contact_matrix_filename)
    expected_enrich_contact_matrix_file = dxpy.upload_local_file(expected_enrich_contact_matrix_filename)

    return { "observed_contact_matrix": observed_contact_matrix_file, "normalized_fend_contact_matrix": normalized_fend_contact_matrix_file, "normalized_enrich_contact_matrix": normalized_enrich_contact_matrix_file, "expected_fend_contact_matrix": expected_fend_contact_matrix_file, "expected_enrich_contact_matrix": expected_enrich_contact_matrix_file } 


