{
  "outputs": [
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#sorted_bam_pe",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
          "engine": "#cwl-js-engine",
          "class": "Expression"
        }
      }
    },
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#split_bam1",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/out_pair1.bam'",
          "engine": "#cwl-js-engine",
          "class": "Expression"
        }
      }
    },
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#split_bam2",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/out_pair2.bam'",
          "engine": "#cwl-js-engine",
          "class": "Expression"
        }
      }
    }
  ],
  "sbg:createdOn": 1464804268,
  "sbg:cmdPreview": "preprocessing.sh /path/to/input_fastq1.fastq /path/to/input_fastq2.fastq",
  "sbg:validationErrors": [],
  "stdout": "",
  "sbg:revision": 14,
  "sbg:id": "gaurav/4dn/fastq2bam/14",
  "sbg:createdBy": "gaurav",
  "sbg:modifiedBy": "duplexa",
  "arguments": [],
  "sbg:modifiedOn": 1467992192,
  "temporaryFailCodes": [],
  "baseCommand": [
    "preprocessing.sh"
  ],
  "label": "hictool-fastq2bam",
  "hints": [
    {
      "class": "sbg:MemRequirement",
      "value": 24000
    },
    {
      "dockerImageId": "",
      "dockerPull": "duplexa/hictool-fastq2bam:v3",
      "class": "DockerRequirement"
    },
    {
      "class": "sbg:CPURequirement",
      "value": 4
    },
    {
      "class": "sbg:AWSInstanceType",
      "value": "i2.xlarge"
    }
  ],
  "sbg:project": "gaurav/4dn",
  "inputs": [
    {
      "type": [
        "File"
      ],
      "id": "#input_fastq1",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 2
      },
      "sbg:fileTypes": "FASTQ, FQ"
    },
    {
      "type": [
        "File"
      ],
      "id": "#input_fastq2",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 3
      },
      "sbg:fileTypes": "FASTQ, FQ"
    },
    {
      "type": [
        "null",
        "string"
      ],
      "sbg:toolDefaultValue": ".",
      "id": "#output_dir",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "valueFrom": {
          "script": "$job.inputs.output_dir || '.'",
          "engine": "#cwl-js-engine",
          "class": "Expression"
        },
        "position": 4
      }
    },
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#bowtie_index",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 1
      },
      "sbg:fileTypes": "TGZ"
    }
  ],
  "requirements": [
    {
      "id": "#cwl-js-engine",
      "class": "ExpressionEngineRequirement",
      "requirements": [
        {
          "dockerPull": "rabix/js-engine",
          "class": "DockerRequirement"
        }
      ]
    }
  ],
  "successCodes": [],
  "stdin": "",
  "sbg:sbgMaintained": false,
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/fastq2bam/14/raw/",
  "class": "CommandLineTool",
  "sbg:revisionNotes": "docker version 3. A sort step skipped.",
  "sbg:revisionsInfo": [
    {
      "sbg:modifiedOn": 1464804268,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 0,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1464816082,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 1,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1464816200,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 2,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1464816230,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 3,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1465323168,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 4,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1465400656,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 5,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1465844403,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 6,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1467828936,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 7,
      "sbg:revisionNotes": "r3.x4large"
    },
    {
      "sbg:modifiedOn": 1467829775,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 8,
      "sbg:revisionNotes": "docker image v2."
    },
    {
      "sbg:modifiedOn": 1467832142,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 9,
      "sbg:revisionNotes": "removed outprefix from output files"
    },
    {
      "sbg:modifiedOn": 1467832711,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 10,
      "sbg:revisionNotes": "remove instance specification and back to cpu 4 and 32G mem."
    },
    {
      "sbg:modifiedOn": 1467834125,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 11,
      "sbg:revisionNotes": "bowtie_index redefined."
    },
    {
      "sbg:modifiedOn": 1467838837,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 12,
      "sbg:revisionNotes": "i2.xlarge"
    },
    {
      "sbg:modifiedOn": 1467989772,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 13,
      "sbg:revisionNotes": "label changed to hictool-fastq2bam"
    },
    {
      "sbg:modifiedOn": 1467992192,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 14,
      "sbg:revisionNotes": "docker version 3. A sort step skipped."
    }
  ],
  "description": "",
  "sbg:image_url": null,
  "sbg:latestRevision": 14,
  "sbg:contributors": [
    "duplexa",
    "gaurav"
  ],
  "sbg:job": {
    "inputs": {
      "input_fastq1": {
        "path": "/path/to/input_fastq1.fastq",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      },
      "bowtie_index": {
        "path": "/path/to/bowtie_index.ext",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      },
      "output_dir": "output_dir",
      "input_fastq2": {
        "path": "/path/to/input_fastq2.fastq",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      }
    },
    "allocatedResources": {
      "mem": 24000,
      "cpu": 4
    }
  }
}
