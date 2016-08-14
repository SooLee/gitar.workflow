cwlVersion: cwl:draft-3
class: CommandLineTool
hints:
  - class: DockerRequirement
    dockerPull: duplexa/hictool-bam2matrix2:v1
baseCommand: HiCtool_norm_contact_matrix.hg19.arg.py
inputs:
  - id: HiC_norm_binning_hdf5
    type: File
    inputBinding:
      position: 1
  - id: HiC_data_object_hdf5 
    type: File
  - id: fend_object_hdf5
    type: File
  - id: chromosome
    type: string
    inputBinding:
      position: 2
  - id: contact_matrix_binsize
    type: int
    inputBinding:
      position: 3
  - id: output_dir
    type: string
    default: '.'
    inputBinding:
      position: 4
outputs:
  - id: observed_contact_matrix
    type: File
    outputBinding:
      glob: $(inputs.output_dir+'/HiCtool_observed_contact_matrix*.txt')
  - id: normalized_fend_contact_matrix
    type: File
    outputBinding:
      glob: $(inputs.output_dir+'/HiCtool_normalized_fend_contact_matrix*.txt')
  - id: normalized_enrich_contact_matrix
    type: File
    outputBinding:
      glob: $(inputs.output_dir+'/HiCtool_normalized_enrich_contact_matrix*.txt')
  - id: expected_fend_contact_matrix
    type: File
    outputBinding:
      glob: $(inputs.output_dir+'/HiCtool_expected_fend_contact_matrix*.txt')
  - id: expected_enrich_contact_matrix
    type: File
    outputBinding:
      glob: $(inputs.output_dir+'/HiCtool_expected_enrich_contact_matrix*.txt')

requirements:
  - class: InlineJavascriptRequirement

