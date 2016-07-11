{
  "outputs": [
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#observed_contact_matrix",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiCtool_observed_contact_matrix*.txt' ",
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
      "id": "#normalized_fend_contact_matrix",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiCtool_normalized_fend_contact_matrix*.txt' ",
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
      "id": "#normalized_enrich_contact_matrix",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiCtool_normalized_enrich_contact_matrix*.txt' ",
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
      "id": "#expected_fend_contact_matrix",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiCtool_expected_fend_contact_matrix*.txt' ",
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
      "id": "#expected_enrich_contact_matrix",
      "outputBinding": {
        "glob": {
          "script": "$job.inputs.output_dir + '/HiCtool_expected_enrich_contact_matrix*.txt'",
          "engine": "#cwl-js-engine",
          "class": "Expression"
        }
      }
    }
  ],
  "sbg:createdOn": 1464816740,
  "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
  "sbg:validationErrors": [],
  "stdout": "",
  "sbg:revision": 7,
  "sbg:id": "gaurav/4dn/bam2matrix2/7",
  "sbg:createdBy": "gaurav",
  "sbg:modifiedBy": "duplexa",
  "arguments": [],
  "sbg:modifiedOn": 1467995451,
  "temporaryFailCodes": [],
  "baseCommand": [
    "run.sh"
  ],
  "label": "hictool-hdf52matrix",
  "hints": [
    {
      "class": "sbg:CPURequirement",
      "value": 8
    },
    {
      "class": "sbg:MemRequirement",
      "value": 8000
    },
    {
      "dockerImageId": "",
      "dockerPull": "duplexa/hictool-hdf52matrix:v2",
      "class": "DockerRequirement"
    }
  ],
  "sbg:project": "gaurav/4dn",
  "inputs": [
    {
      "type": [
        "File"
      ],
      "id": "#HiC_norm_binning_hdf5",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 1
      },
      "sbg:fileTypes": "HDF5"
    },
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#HiC_data_object_hdf5",
      "sbg:fileTypes": "HDF5"
    },
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#fend_object_hdf5",
      "sbg:fileTypes": "HDF5"
    },
    {
      "type": [
        "string"
      ],
      "id": "#chromosome",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 2
      }
    },
    {
      "type": [
        "int"
      ],
      "sbg:toolDefaultValue": "50000",
      "id": "#contact_matrix_binsize",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 3
      }
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
        "position": 5
      }
    },
    {
      "type": [
        "null",
        "File"
      ],
      "id": "#chrlen_file",
      "inputBinding": {
        "sbg:cmdInclude": true,
        "separate": false,
        "position": 4
      }
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
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/bam2matrix2/7/raw/",
  "class": "CommandLineTool",
  "sbg:revisionsInfo": [
    {
      "sbg:modifiedOn": 1464816740,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 0,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1464818050,
      "sbg:modifiedBy": "gaurav",
      "sbg:revision": 1,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1467989666,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 2,
      "sbg:revisionNotes": "docker hdf52matrix:v2"
    },
    {
      "sbg:modifiedOn": 1467989698,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 3,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1467989823,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 4,
      "sbg:revisionNotes": "label changed to hictool-hdf52matrix"
    },
    {
      "sbg:modifiedOn": 1467991994,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 5,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1467992019,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 6,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1467995451,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 7,
      "sbg:revisionNotes": null
    }
  ],
  "description": "",
  "sbg:image_url": null,
  "sbg:latestRevision": 7,
  "sbg:contributors": [
    "duplexa",
    "gaurav"
  ],
  "sbg:job": {
    "inputs": {
      "chrlen_file": {
        "path": "/path/to/chrlen_file.ext",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      },
      "HiC_data_object_hdf5": {
        "path": "/path/to/HiC_data_object_hdf5.ext",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      },
      "contact_matrix_binsize": 0,
      "chromosome": "chromosome",
      "output_dir": "output_dir",
      "fend_object_hdf5": {
        "path": "/path/to/fend_object_hdf5.ext",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      },
      "HiC_norm_binning_hdf5": {
        "path": "/path/to/HiC_norm_binning_hdf5.ext",
        "size": 0,
        "class": "File",
        "secondaryFiles": []
      }
    },
    "allocatedResources": {
      "mem": 8000,
      "cpu": 8
    }
  }
}
