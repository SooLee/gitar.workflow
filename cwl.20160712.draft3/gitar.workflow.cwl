cwlVersion: cwl:draft-3
class: Workflow
requirements:
  - class: ScatterFeatureRequirement
inputs:
  - id: input_fastq1
    type: File
  - id: input_fastq2
    type: File
  - id: output_dir
    type: string
    default: '.'
  - id: output_prefix
    type: string
  - id: contact_matrix_binsize
    type: int
  - id: chromosome
    type: 
      items: string
      type: array
outputs:
  - id: sorted_bam_pe
    type: File
    source: '#fastq2bam/sorted_bam_pe'
  - id: split_bam1
    type: File
    source: '#fastq2bam/split_bam1'
  - id: split_bam2
    type: File
    source: '#fastq2bam/split_bam2'
  - id: fend_object_hdf5
    type: File
    source: '#bam2matrix/fend_object_hdf5'
  - id: HiC_data_object_hdf5
    type: File
    source: '#bam2matrix/HiC_data_object_hdf5'
  - id: HiC_distance_function_hdf5
    type: File
    source: '#bam2matrix/HiC_distance_function_hdf5'
  - id: HiC_norm_binning_hdf5
    type: File
    source: '#bam2matrix/HiC_norm_binning_hdf5'
  - id: HiC_project_object_hdf5
    type: File
    source: '#bam2matrix/HiC_project_object_hdf5'
  - id: observed_contact_matrix
    type:
      items: File
      type: array
    source: '#bam2matrix2/observed_contact_matrix'
  - id: normalized_fend_contact_matrix
    type:
      items: File
      type: array
    source: '#bam2matrix2/normalized_fend_contact_matrix'
  - id: normalized_enrich_contact_matrix
    type:
      items: File
      type: array
    source: '#bam2matrix2/normalized_enrich_contact_matrix'
  - id: expected_fend_contact_matrix
    type:
      items: File
      type: array
    source: '#bam2matrix2/expected_fend_contact_matrix'
  - id: expected_enrich_contact_matrix
    type:
      items: File
      type: array
    source: '#bam2matrix2/expected_enrich_contact_matrix'
steps:
  - id: fastq2bam
    run: fastq2bam.cwl
    inputs:
      - id: input_fastq1
        source: '#input_fastq1'
      - id: input_fastq2
        source: '#input_fastq2'
      - id: output_dir
        source: '#output_dir'
      - id: output_prefix
        source: '#output_prefix'
    outputs:
      - id: sorted_bam_pe
      - id: split_bam1
      - id: split_bam2
  - id: bam2matrix
    run: bam2matrix.cwl
    inputs:
      - id: input_bam1
        source: '#fastq2bam/split_bam1'
      - id: input_bam2
        source: '#fastq2bam/split_bam2'
      - id: output_dir
        source: '#output_dir'
    outputs:
      - id: fend_object_hdf5
      - id: HiC_data_object_hdf5
      - id: HiC_distance_function_hdf5
      - id: HiC_norm_binning_hdf5
      - id: HiC_project_object_hdf5
  - id: bam2matrix2
    run: bam2matrix2.cwl
    inputs: 
      - id: HiC_norm_binning_hdf5
        source: '#bam2matrix/HiC_norm_binning_hdf5'
      - id: HiC_data_object_hdf5
        source: '#bam2matrix/HiC_data_object_hdf5'
      - id: fend_object_hdf5
        source: '#bam2matrix/fend_object_hdf5'
      - id: chromosome
        source: '#chromosome'
      - id: contact_matrix_binsize
        source: '#contact_matrix_binsize'
      - id: output_dir
        source: '#output_dir'
    outputs: 
      - id: observed_contact_matrix
      - id: normalized_fend_contact_matrix
      - id: normalized_enrich_contact_matrix
      - id: expected_fend_contact_matrix
      - id: expected_enrich_contact_matrix
    scatter:
      - '#bam2matrix2/chromosome'
    scatterMethod: dotproduct

