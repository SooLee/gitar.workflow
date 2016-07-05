import dxpy, subprocess

@dxpy.entry_point('main')
def main ( fastq1_gz, fastq2_gz, bowtie_index ):

    input_fastq_file1 = dxpy.DXFile(fastq1_gz)
    input_fastq_file1_name = input_fastq_file1.describe()['name']
    if input_fastq_file1_name.endswith('.gz'):
       dxpy.download_dxfile(fastq1_gz, "fastq1.gz")
       subprocess.call("gunzip -q fastq1.gz", shell=True)
    else:
       dxpy.download_dxfile(fastq1_gz, "fastq1")
       

    input_fastq_file2 = dxpy.DXFile(fastq2_gz)
    input_fastq_file2_name = input_fastq_file2.describe()['name']
    if input_fastq_file2_name.endswith('.gz'):
       dxpy.download_dxfile(fastq2_gz, "fastq2.gz")
       subprocess.call("gunzip -q fastq2.gz", shell=True)
    else: 
       dxpy.download_dxfile(fastq2_gz, "fastq2")

    dxpy.download_dxfile(bowtie_index, "bowtie_index.tgz")
    
    command1 = "tar -xzf bowtie_index.tgz"
    subprocess.call(command1, shell=True)

    command4 = "ls -1 *bt2 | head -1 | sed 's/.1.bt2//g' > file_containing_bowtie_index_name"
    subprocess.call(command4, shell=True)

    subprocess.call("ls",shell=True)
    subprocess.call("cat file_containing_bowtie_index_name",shell=True)

    outprefix='out'

    command5 = "cat file_containing_bowtie_index_name | xargs -i sh -c 'preprocessing.sh {{}} fastq1 fastq2 . {outprefix}'".format(outprefix=outprefix)
    subprocess.call(command5, shell=True)
    print(command5)
    
    sorted_bam_pe_filename = "{outprefix}_noDup.sort.bam".format(outprefix=outprefix)
    split_bam1_filename = "{outprefix}_pair1.bam".format(outprefix=outprefix)
    split_bam2_filename = "{outprefix}_pair2.bam".format(outprefix=outprefix)
    sorted_bam_pe_file = dxpy.upload_local_file(sorted_bam_pe_filename)
    split_bam1_file = dxpy.upload_local_file(split_bam1_filename)
    split_bam2_file = dxpy.upload_local_file(split_bam2_filename)

    return { "sorted_bam_pe": sorted_bam_pe_file, "split_bam1": split_bam1_file, "split_bam2": split_bam2_file }


