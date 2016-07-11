{
  "outputs": [
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#fend_object_hdf5",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/fend_object.hdf5'",
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
      "id": "#HiC_data_object_hdf5",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
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
      "id": "#HiC_distance_function_hdf5",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'",
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
      "id": "#HiC_norm_binning_hdf5",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'",
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
      "id": "#HiC_project_object_hdf5",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
          "engine": "#cwl-js-engine",
          "class": "Expression"
        }
      }
    }
  ],
  "sbg:createdOn": 1467989155,
  "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
  "sbg:validationErrors": [],
  "stdout": "",
  "sbg:revision": 4,
  "sbg:id": "gaurav/4dn/bam2hdf5/4",
  "sbg:createdBy": "duplexa",
  "sbg:modifiedBy": "duplexa",
  "arguments": [],
  "sbg:modifiedOn": 1467995167,
  "temporaryFailCodes": [],
  "baseCommand": [
    "run.sh"
  ],
  "label": "hictool-bam2hdf5",
  "hints": [
    {
      "class": "sbg:CPURequirement",
      "value": 4
    },
    {
      "class": "sbg:MemRequirement",
      "value": 24000
    },
    {
      "dockerImageId": "",
      "dockerPull": "duplexa/hictool-bam2hdf5:v2",
      "class": "DockerRequirement"
    }
  ],
  "sbg:project": "gaurav/4dn",
  "inputs": [
    {
      "type": [
        "File"
      ],
      "id": "#input_bam1",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 1
      },
      "sbg:fileTypes": "BAM"
    },
    {
      "type": [
        "File"
      ],
      "id": "#input_bam2",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 2
      },
      "sbg:fileTypes": "BAM"
    },
    {
      "type": [
        "null",
        "string"
      ],
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
      "id": "#RE_bed",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 3
      },
      "sbg:fileTypes": "BED"
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
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/bam2hdf5/4/raw/",
  "class": "CommandLineTool",
  "sbg:revisionsInfo": [
    {
      "sbg:modifiedOn": 1467989155,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 0,
      "sbg:revisionNotes": "Copy of gaurav/4dn/bam2matrix/3"
    },
    {
      "sbg:modifiedOn": 1467989197,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 1,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1467989438,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 2,
      "sbg:revisionNotes": "docker bam2hdf5:v2"
    },
    {
      "sbg:modifiedOn": 1467989798,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 3,
      "sbg:revisionNotes": "label changed to hictool-bam2hdf5"
    },
    {
      "sbg:modifiedOn": 1467995167,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 4,
      "sbg:revisionNotes": null
    }
  ],
  "description": "",
  "sbg:image_url": null,
  "sbg:latestRevision": 4,
  "sbg:contributors": [
    "duplexa"
  ],
  "sbg:job": {
    "inputs": {
      "input_bam1": {
        "path": "/path/to/input_bam1.bam",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      },
      "RE_bed": {
        "path": "/path/to/RE_bed.ext",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      },
      "output_dir": "output_dir",
      "input_bam2": {
        "path": "/path/to/input_bam2.bam",
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
