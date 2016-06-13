{
  "arguments": [],
  "description": "",
  "sbg:cmdPreview": "HiCtool_norm_contact_matrix.hg19.arg.py /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
  "sbg:revisionsInfo": [
    {
      "sbg:revision": 0,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464816740
    },
    {
      "sbg:revision": 1,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464818050
    }
  ],
  "sbg:latestRevision": 1,
  "temporaryFailCodes": [],
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/bam2matrix2/1/raw/",
  "sbg:project": "gaurav/4dn",
  "baseCommand": [
    "HiCtool_norm_contact_matrix.hg19.arg.py"
  ],
  "outputs": [
    {
      "outputBinding": {
        "glob": {
          "class": "Expression",
          "engine": "#cwl-js-engine",
          "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' "
        }
      },
      "id": "#observed_contact_matrix",
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
          "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' "
        }
      },
      "id": "#normalized_fend_contact_matrix",
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
          "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' "
        }
      },
      "id": "#normalized_enrich_contact_matrix",
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
          "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' "
        }
      },
      "id": "#expected_fend_contact_matrix",
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
          "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'"
        }
      },
      "id": "#expected_enrich_contact_matrix",
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
      "dockerPull": "duplexa/hictool-bam2matrix2",
      "dockerImageId": ""
    }
  ],
  "stdin": "",
  "stdout": "",
  "sbg:revision": 1,
  "sbg:image_url": null,
  "sbg:createdBy": "gaurav",
  "label": "bam2matrix2",
  "successCodes": [],
  "inputs": [
    {
      "sbg:fileTypes": "HDF5",
      "id": "#HiC_norm_binning_hdf5",
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
      "sbg:fileTypes": "HDF5",
      "id": "#HiC_data_object_hdf5",
      "type": [
        "null",
        "File"
      ]
    },
    {
      "sbg:fileTypes": "HDF5",
      "id": "#fend_object_hdf5",
      "type": [
        "null",
        "File"
      ]
    },
    {
      "id": "#chromosome",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 2
      },
      "type": [
        "string"
      ]
    },
    {
      "sbg:stageInput": null,
      "id": "#contact_matrix_binsize",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 3
      },
      "type": [
        "int"
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
        "position": 4
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
      "contact_matrix_binsize": 0,
      "chromosome": "chromosome",
      "output_dir": "output_dir",
      "HiC_norm_binning_hdf5": {
        "class": "File",
        "path": "/path/to/HiC_norm_binning_hdf5.ext",
        "size": 0,
        "secondaryFiles": []
      },
      "HiC_data_object_hdf5": {
        "class": "File",
        "path": "/path/to/HiC_data_object_hdf5.ext",
        "size": 0,
        "secondaryFiles": []
      },
      "fend_object_hdf5": {
        "class": "File",
        "path": "/path/to/fend_object_hdf5.ext",
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
  "sbg:createdOn": 1464816740,
  "sbg:sbgMaintained": false,
  "sbg:contributors": [
    "gaurav"
  ],
  "sbg:modifiedOn": 1464818050,
  "sbg:id": "gaurav/4dn/bam2matrix2/1"
}
