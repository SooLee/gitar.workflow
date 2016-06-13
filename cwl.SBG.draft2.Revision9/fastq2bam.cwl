{
  "arguments": [],
  "description": "",
  "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq output_prefix",
  "sbg:revisionsInfo": [
    {
      "sbg:revision": 0,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464804268
    },
    {
      "sbg:revision": 1,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464816082
    },
    {
      "sbg:revision": 2,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464816200
    },
    {
      "sbg:revision": 3,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464816230
    },
    {
      "sbg:revision": 4,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465323168
    },
    {
      "sbg:revision": 5,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465400656
    },
    {
      "sbg:revision": 6,
      "sbg:modifiedBy": "duplexa",
      "sbg:modifiedOn": 1465844403
    }
  ],
  "sbg:latestRevision": 6,
  "temporaryFailCodes": [],
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/fastq2bam/5/raw/",
  "baseCommand": [
    "preprocessing.sh"
  ],
  "sbg:job": {
    "inputs": {
      "output_prefix": "output_prefix",
      "input_fastq1": {
        "class": "File",
        "path": "/path/to/input_fastq1.fastq",
        "size": 0,
        "secondaryFiles": []
      },
      "input_fastq2": {
        "class": "File",
        "path": "/path/to/input_fastq2.fastq",
        "size": 0,
        "secondaryFiles": []
      },
      "output_dir": "output_dir"
    },
    "allocatedResources": {
      "mem": 32000,
      "cpu": 4
    }
  },
  "outputs": [
    {
      "outputBinding": {
        "glob": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "$job.inputs.output_dir + '/' + $job.inputs.output_prefix + '_noDup.sort.bam'"
        }
      },
      "id": "#sorted_bam_pe",
      "type": [
        "null",
        "File"
      ]
    },
    {
      "outputBinding": {
        "glob": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "$job.inputs.output_dir + '/' + $job.inputs.output_prefix + '_pair1.bam'"
        }
      },
      "id": "#split_bam1",
      "type": [
        "null",
        "File"
      ]
    },
    {
      "outputBinding": {
        "glob": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "$job.inputs.output_dir + '/' + $job.inputs.output_prefix + '_pair2.bam'"
        }
      },
      "id": "#split_bam2",
      "type": [
        "null",
        "File"
      ]
    }
  ],
  "hints": [
    {
      "class": "sbg:CPURequirement",
      "value": 4
    },
    {
      "class": "sbg:MemRequirement",
      "value": 32000
    },
    {
      "class": "DockerRequirement",
      "dockerImageId": "",
      "dockerPull": "duplexa/hictool-fastq2bam"
    }
  ],
  "sbg:modifiedOn": 1465400656,
  "stdin": "",
  "sbg:revision": 5,
  "sbg:image_url": null,
  "sbg:createdBy": "gaurav",
  "label": "fastq2bam",
  "successCodes": [],
  "sbg:project": "gaurav/4dn",
  "requirements": [
    {
      "class": "ExpressionEngineRequirement",
      "requirements": [
        {
          "class": "DockerRequirement",
          "dockerPull": "rabix/js-engine"
        }
      ],
      "id": "#cwl-js-engine"
    }
  ],
  "sbg:modifiedBy": "gaurav",
  "class": "CommandLineTool",
  "inputs": [
    {
      "sbg:fileTypes": "FASTQ, FQ",
      "id": "#input_fastq1",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 1
      },
      "type": [
        "File"
      ]
    },
    {
      "sbg:fileTypes": "FASTQ, FQ",
      "id": "#input_fastq2",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 2
      },
      "type": [
        "File"
      ]
    },
    {
      "sbg:toolDefaultValue": ".",
      "id": "#output_dir",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "valueFrom": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "$job.inputs.output_dir || '.'"
        },
        "separate": false,
        "position": 3
      },
      "type": [
        "null",
        "string"
      ]
    },
    {
      "id": "#output_prefix",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 4
      },
      "type": [
        "string"
      ]
    }
  ],
  "sbg:validationErrors": [],
  "sbg:createdOn": 1464804268,
  "sbg:sbgMaintained": false,
  "sbg:contributors": [
    "gaurav",
    "duplexa"
  ],
  "sbg:id": "gaurav/4dn/fastq2bam/5",
  "stdout": ""
}
