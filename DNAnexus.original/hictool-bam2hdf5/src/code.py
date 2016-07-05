import dxpy, subprocess

@dxpy.entry_point('main')
def main ( bam1, bam2, RE_site_bed):

    dxpy.download_dxfile(bam1, "input1.bam")
    dxpy.download_dxfile(bam2, "input2.bam")
    dxpy.download_dxfile(RE_site_bed, "RE.bed")
    
    command = "cp -r /miniconda ~; cp -r /.conda ~; bash -c 'PATH=/home/dnanexus/miniconda/miniconda2/bin:$PATH; source activate gitar; which python; python /usr/bin/HiCtool_hifive.arg.py input1.bam input2.bam RE.bed .'"
    print(command)
    subprocess.call(command, shell=True)
    

    fend_object_hdf5_filename = "./fend_object.hdf5"
    HiC_data_object_hdf5_filename = "./HiC_data_object.hdf5"
    HiC_distance_function_hdf5_filename = "./HiC_distance_function.hdf5"
    HiC_norm_binning_hdf5_filename = "./HiC_norm_binning.hdf5"
    HiC_project_object_hdf5_filename = "./HiC_project_object.hdf5"
    
    #fend_object_hdf5_file = dxpy.upload_local_file(fend_object_hdf5_filename, folder=outdir)
    #HiC_data_object_hdf5_file = dxpy.upload_local_file(HiC_data_object_hdf5_filename, folder=outdir)
    #HiC_distance_function_hdf5_file= dxpy.upload_local_file(HiC_distance_function_hdf5_filename, folder=outdir)
    #HiC_norm_binning_hdf5_file= dxpy.upload_local_file(HiC_norm_binning_hdf5_filename, folder=outdir)
    #HiC_project_object_hdf5_file= dxpy.upload_local_file(HiC_project_object_hdf5_filename, folder=outdir)

    fend_object_hdf5_file = dxpy.upload_local_file(fend_object_hdf5_filename)
    HiC_data_object_hdf5_file = dxpy.upload_local_file(HiC_data_object_hdf5_filename)
    HiC_distance_function_hdf5_file= dxpy.upload_local_file(HiC_distance_function_hdf5_filename)
    HiC_norm_binning_hdf5_file= dxpy.upload_local_file(HiC_norm_binning_hdf5_filename)
    HiC_project_object_hdf5_file= dxpy.upload_local_file(HiC_project_object_hdf5_filename)

    return { "fend_object_hdf5": fend_object_hdf5_file, "HiC_data_object_hdf5": HiC_data_object_hdf5_file, "HiC_distance_function_hdf5": HiC_distance_function_hdf5_file, "HiC_norm_binning_hdf5": HiC_norm_binning_hdf5_file, "HiC_project_object_hdf5": HiC_project_object_hdf5_file }


