cwlVersion: cwl:draft-3
class: CommandLineTool
baseCommand: preprocessing.sh
hints:
  - class: DockerRequirement
    dockerPull: duplexa/hictool-fastq2bam:v1
inputs:
  - id: input_fastq1
    type: File
    inputBinding:
      position: 1
  - id: input_fastq2
    type: File
    inputBinding:
      position: 2
  - id: output_dir
    type: string
    default: '.'
    inputBinding:
      position: 3
  - id: output_prefix
    type: string
    inputBinding:
      position: 4
outputs:
  - id: sorted_bam_pe
    type: File
    outputBinding:
      glob: $(inputs.output_dir + '/' + inputs.output_prefix + '_noDup.sort.bam')
  - id: split_bam1
    type: File
    outputBinding:
      glob: $(inputs.output_dir + '/' + inputs.output_prefix + '_pair1.bam')
  - id: split_bam2
    type: File
    outputBinding:
      glob: $(inputs.output_dir + '/' + inputs.output_prefix + '_pair2.bam')

requirements:
  - class: InlineJavascriptRequirement

