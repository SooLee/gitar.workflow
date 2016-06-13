{
  "arguments": [],
  "description": "",
  "sbg:cmdPreview": "HiCtool_hifive.hg19.arg.py /path/to/input_bam1.bam /path/to/input_bam2.bam",
  "sbg:revisionsInfo": [
    {
      "sbg:revision": 0,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464816276
    },
    {
      "sbg:revision": 1,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464816635
    },
    {
      "sbg:revision": 2,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464816716
    },
    {
      "sbg:revision": 3,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464818222
    }
  ],
  "sbg:latestRevision": 3,
  "temporaryFailCodes": [],
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/bam2matrix/3/raw/",
  "sbg:project": "gaurav/4dn",
  "baseCommand": [
    "HiCtool_hifive.hg19.arg.py"
  ],
  "outputs": [
    {
      "outputBinding": {
        "glob": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "$job.inputs.output_dir + '/fend_object.hdf5'"
        }
      },
      "id": "#fend_object_hdf5",
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
          "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
        }
      },
      "id": "#HiC_data_object_hdf5",
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
          "script": "$job.inputs.output_dir + '/HiC_distance_function.hdf5'"
        }
      },
      "id": "#HiC_distance_function_hdf5",
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
          "script": "$job.inputs.output_dir + '/HiC_norm_binning.hdf5'"
        }
      },
      "id": "#HiC_norm_binning_hdf5",
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
          "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
        }
      },
      "id": "#HiC_project_object_hdf5",
      "type": [
        "null",
        "File"
      ]
    }
  ],
  "hints": [
    {
      "class": "sbg:CPURequirement",
      "value": 1
    },
    {
      "class": "sbg:MemRequirement",
      "value": 1000
    },
    {
      "class": "DockerRequirement",
      "dockerPull": "duplexa/hictool-bam2matrix",
      "dockerImageId": ""
    }
  ],
  "stdin": "",
  "stdout": "",
  "sbg:revision": 3,
  "sbg:image_url": null,
  "sbg:createdBy": "gaurav",
  "label": "bam2matrix",
  "successCodes": [],
  "inputs": [
    {
      "sbg:fileTypes": "BAM",
      "id": "#input_bam1",
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
      "sbg:fileTypes": "BAM",
      "id": "#input_bam2",
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
    }
  ],
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
  "sbg:job": {
    "inputs": {
      "output_dir": "output_dir",
      "input_bam2": {
        "class": "File",
        "path": "/path/to/input_bam2.bam",
        "size": 0,
        "secondaryFiles": []
      },
      "input_bam1": {
        "class": "File",
        "path": "/path/to/input_bam1.bam",
        "size": 0,
        "secondaryFiles": []
      }
    },
    "allocatedResources": {
      "mem": 1000,
      "cpu": 1
    }
  },
  "class": "CommandLineTool",
  "sbg:validationErrors": [],
  "sbg:createdOn": 1464816276,
  "sbg:sbgMaintained": false,
  "sbg:contributors": [
    "gaurav"
  ],
  "sbg:modifiedOn": 1464818222,
  "sbg:id": "gaurav/4dn/bam2matrix/3"
}
