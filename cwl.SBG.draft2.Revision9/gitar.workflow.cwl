{
  "steps": [
    {
      "inputs": [
        {
          "source": [
            "#output_dir"
          ],
          "id": "#bam2matrix2.output_dir"
        },
        {
          "source": [
            "#bam2matrix.fend_object_hdf5"
          ],
          "id": "#bam2matrix2.fend_object_hdf5"
        },
        {
          "default": 50000,
          "source": [
            "#contact_matrix_binsize"
          ],
          "id": "#bam2matrix2.contact_matrix_binsize"
        },
        {
          "source": [
            "#chromosome"
          ],
          "id": "#bam2matrix2.chromosome"
        },
        {
          "source": [
            "#bam2matrix.HiC_norm_binning_hdf5"
          ],
          "id": "#bam2matrix2.HiC_norm_binning_hdf5"
        },
        {
          "source": [
            "#bam2matrix.HiC_data_object_hdf5"
          ],
          "id": "#bam2matrix2.HiC_data_object_hdf5"
        }
      ],
      "scatter": "#bam2matrix2.chromosome",
      "outputs": [
        {
          "id": "#bam2matrix2.observed_contact_matrix"
        },
        {
          "id": "#bam2matrix2.normalized_fend_contact_matrix"
        },
        {
          "id": "#bam2matrix2.normalized_enrich_contact_matrix"
        },
        {
          "id": "#bam2matrix2.expected_fend_contact_matrix"
        },
        {
          "id": "#bam2matrix2.expected_enrich_contact_matrix"
        }
      ],
      "sbg:y": 194.85724651246235,
      "sbg:x": 653.0955255599356,
      "run": {
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
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-bam2matrix2"
          }
        ],
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
        "id": "gaurav/4dn/bam2matrix2/1",
        "baseCommand": [
          "HiCtool_norm_contact_matrix.hg19.arg.py"
        ],
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
        "stdout": "",
        "stdin": "",
        "sbg:revision": 1,
        "sbg:project": "gaurav/4dn",
        "sbg:image_url": null,
        "sbg:createdBy": "gaurav",
        "label": "bam2matrix2",
        "successCodes": [],
        "inputs": [
          {
            "sbg:includeInPorts": true,
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
            "required": false,
            "type": [
              "null",
              "string"
            ]
          },
          {
            "sbg:fileTypes": "HDF5",
            "id": "#fend_object_hdf5",
            "required": false,
            "type": [
              "null",
              "File"
            ]
          },
          {
            "sbg:includeInPorts": false,
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 3
            },
            "type": [
              "int"
            ],
            "sbg:stageInput": null,
            "required": true,
            "id": "#contact_matrix_binsize"
          },
          {
            "sbg:includeInPorts": true,
            "id": "#chromosome",
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 2
            },
            "required": true,
            "type": [
              {
                "items": "string",
                "type": "array"
              }
            ]
          },
          {
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_norm_binning_hdf5",
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 1
            },
            "required": true,
            "type": [
              "File"
            ]
          },
          {
            "sbg:fileTypes": "HDF5",
            "id": "#HiC_data_object_hdf5",
            "required": false,
            "type": [
              "null",
              "File"
            ]
          }
        ],
        "x": 653.0955255599356,
        "sbg:modifiedBy": "gaurav",
        "y": 194.85724651246235,
        "class": "CommandLineTool",
        "sbg:validationErrors": [],
        "sbg:createdOn": 1464816740,
        "sbg:sbgMaintained": false,
        "sbg:contributors": [
          "gaurav"
        ],
        "sbg:modifiedOn": 1464818050,
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
        "sbg:id": "gaurav/4dn/bam2matrix2/1"
      },
      "id": "#bam2matrix2"
    },
    {
      "inputs": [
        {
          "default": "",
          "source": [
            "#output_dir"
          ],
          "id": "#bam2matrix.output_dir"
        },
        {
          "source": [
            "#fastq2bam.split_bam2"
          ],
          "id": "#bam2matrix.input_bam2"
        },
        {
          "source": [
            "#fastq2bam.split_bam1"
          ],
          "id": "#bam2matrix.input_bam1"
        }
      ],
      "outputs": [
        {
          "id": "#bam2matrix.fend_object_hdf5"
        },
        {
          "id": "#bam2matrix.HiC_project_object_hdf5"
        },
        {
          "id": "#bam2matrix.HiC_norm_binning_hdf5"
        },
        {
          "id": "#bam2matrix.HiC_distance_function_hdf5"
        },
        {
          "id": "#bam2matrix.HiC_data_object_hdf5"
        }
      ],
      "sbg:y": 194.28574380420602,
      "sbg:x": 216.4286686087448,
      "run": {
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
            "dockerImageId": "",
            "dockerPull": "duplexa/hictool-bam2matrix"
          }
        ],
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
        "id": "gaurav/4dn/bam2matrix/3",
        "baseCommand": [
          "HiCtool_hifive.hg19.arg.py"
        ],
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
                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' "
              }
            },
            "id": "#HiC_project_object_hdf5",
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
                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'"
              }
            },
            "id": "#HiC_data_object_hdf5",
            "type": [
              "null",
              "File"
            ]
          }
        ],
        "stdout": "",
        "stdin": "",
        "sbg:revision": 3,
        "sbg:project": "gaurav/4dn",
        "sbg:image_url": null,
        "sbg:createdBy": "gaurav",
        "label": "bam2matrix",
        "successCodes": [],
        "inputs": [
          {
            "sbg:includeInPorts": true,
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
            "required": false,
            "type": [
              "null",
              "string"
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
            "required": true,
            "type": [
              "File"
            ]
          },
          {
            "sbg:fileTypes": "BAM",
            "id": "#input_bam1",
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 1
            },
            "required": true,
            "type": [
              "File"
            ]
          }
        ],
        "x": 216.4286686087448,
        "sbg:modifiedBy": "gaurav",
        "y": 194.28574380420602,
        "class": "CommandLineTool",
        "sbg:validationErrors": [],
        "sbg:createdOn": 1464816276,
        "sbg:sbgMaintained": false,
        "sbg:contributors": [
          "gaurav"
        ],
        "sbg:modifiedOn": 1464818222,
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
        "sbg:id": "gaurav/4dn/bam2matrix/3"
      },
      "id": "#bam2matrix"
    },
    {
      "inputs": [
        {
          "source": [
            "#output_prefix"
          ],
          "id": "#fastq2bam.output_prefix"
        },
        {
          "default": "",
          "source": [
            "#output_dir"
          ],
          "id": "#fastq2bam.output_dir"
        },
        {
          "source": [
            "#input_fastq2"
          ],
          "id": "#fastq2bam.input_fastq2"
        },
        {
          "source": [
            "#input_fastq1"
          ],
          "id": "#fastq2bam.input_fastq1"
        }
      ],
      "outputs": [
        {
          "id": "#fastq2bam.split_bam2"
        },
        {
          "id": "#fastq2bam.split_bam1"
        },
        {
          "id": "#fastq2bam.sorted_bam_pe"
        }
      ],
      "sbg:y": 205.0000234047579,
      "sbg:x": 42.00001634491858,
      "run": {
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
          }
        ],
        "sbg:latestRevision": 5,
        "temporaryFailCodes": [],
        "id": "gaurav/4dn/fastq2bam/5",
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
                "script": "$job.inputs.output_dir + '/' + $job.inputs.output_prefix + '_pair2.bam'"
              }
            },
            "id": "#split_bam2",
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
                "script": "$job.inputs.output_dir + '/' + $job.inputs.output_prefix + '_noDup.sort.bam'"
              }
            },
            "id": "#sorted_bam_pe",
            "type": [
              "null",
              "File"
            ]
          }
        ],
        "stdout": "",
        "stdin": "",
        "sbg:revision": 5,
        "sbg:project": "gaurav/4dn",
        "sbg:image_url": null,
        "sbg:createdBy": "gaurav",
        "label": "fastq2bam",
        "successCodes": [],
        "inputs": [
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
          },
          {
            "sbg:includeInPorts": true,
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
            ],
            "sbg:toolDefaultValue": ".",
            "required": false,
            "id": "#output_dir"
          },
          {
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq2",
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 2
            },
            "required": true,
            "type": [
              "File"
            ]
          },
          {
            "sbg:fileTypes": "FASTQ, FQ",
            "id": "#input_fastq1",
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 1
            },
            "required": true,
            "type": [
              "File"
            ]
          }
        ],
        "x": 42.00001634491858,
        "sbg:modifiedBy": "gaurav",
        "y": 205.0000234047579,
        "class": "CommandLineTool",
        "sbg:validationErrors": [],
        "sbg:createdOn": 1464804268,
        "sbg:sbgMaintained": false,
        "sbg:contributors": [
          "gaurav"
        ],
        "sbg:modifiedOn": 1465400656,
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
        "sbg:id": "gaurav/4dn/fastq2bam/5"
      },
      "id": "#fastq2bam"
    }
  ],
  "description": "",
  "sbg:revisionsInfo": [
    {
      "sbg:revision": 0,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464818096
    },
    {
      "sbg:revision": 1,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1464818473
    },
    {
      "sbg:revision": 2,
      "sbg:modifiedBy": "alver",
      "sbg:modifiedOn": 1464901555
    },
    {
      "sbg:revision": 3,
      "sbg:modifiedBy": "alver",
      "sbg:modifiedOn": 1464901591
    },
    {
      "sbg:revision": 4,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465411080
    },
    {
      "sbg:revision": 5,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465421326
    },
    {
      "sbg:revision": 6,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465438025
    },
    {
      "sbg:revision": 7,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465438055
    },
    {
      "sbg:revision": 8,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465492853
    },
    {
      "sbg:revision": 9,
      "sbg:modifiedBy": "gaurav",
      "sbg:modifiedOn": 1465504531
    },
    {
      "sbg:revision": 10,
      "sbg:modifiedBy": "duplexa",
      "sbg:modifiedOn": 1465845262
    }
  ],
  "sbg:latestRevision": 10,
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/gitar-workflow/9/raw/",
  "sbg:project": "gaurav/4dn",
  "outputs": [
    {
      "sbg:includeInPorts": true,
      "label": "sorted_bam_pe",
      "sbg:y": 460.2381925147713,
      "source": [
        "#fastq2bam.sorted_bam_pe"
      ],
      "sbg:x": 206.42868168203083,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#sorted_bam_pe"
    },
    {
      "sbg:includeInPorts": true,
      "label": "observed_contact_matrix",
      "sbg:y": -61.428571241242516,
      "source": [
        "#bam2matrix2.observed_contact_matrix"
      ],
      "sbg:x": 925.9524452137587,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#observed_contact_matrix"
    },
    {
      "sbg:includeInPorts": true,
      "label": "normalized_fend_contact_matrix",
      "sbg:y": 88.09525728604214,
      "source": [
        "#bam2matrix2.normalized_fend_contact_matrix"
      ],
      "sbg:x": 926.6667254236023,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#normalized_fend_contact_matrix"
    },
    {
      "sbg:includeInPorts": true,
      "label": "normalized_enrich_contact_matrix",
      "sbg:y": 207.61907713753936,
      "source": [
        "#bam2matrix2.normalized_enrich_contact_matrix"
      ],
      "sbg:x": 1088.8097774641944,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#normalized_enrich_contact_matrix"
    },
    {
      "sbg:includeInPorts": true,
      "label": "expected_fend_contact_matrix",
      "sbg:y": 282.1428536895717,
      "source": [
        "#bam2matrix2.expected_fend_contact_matrix"
      ],
      "sbg:x": 926.1905071148799,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#expected_fend_contact_matrix"
    },
    {
      "sbg:includeInPorts": true,
      "label": "expected_enrich_contact_matrix",
      "sbg:y": 434.7619589605046,
      "source": [
        "#bam2matrix2.expected_enrich_contact_matrix"
      ],
      "sbg:x": 922.6191523056216,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#expected_enrich_contact_matrix"
    },
    {
      "sbg:includeInPorts": true,
      "label": "HiC_project_object_hdf5",
      "sbg:y": -63.80951447524698,
      "source": [
        "#bam2matrix.HiC_project_object_hdf5"
      ],
      "sbg:x": 395.9524885662058,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#HiC_project_object_hdf5"
    },
    {
      "sbg:includeInPorts": true,
      "label": "HiC_distance_function_hdf5",
      "sbg:y": 459.28578879909185,
      "source": [
        "#bam2matrix.HiC_distance_function_hdf5"
      ],
      "sbg:x": 410.47633308078144,
      "type": [
        "null",
        "File"
      ],
      "required": false,
      "id": "#HiC_distance_function_hdf5"
    }
  ],
  "hints": [],
  "sbg:revision": 9,
  "sbg:modifiedOn": 1465504531,
  "sbg:createdBy": "gaurav",
  "label": "gitar-workflow",
  "sbg:canvas_y": 72,
  "inputs": [
    {
      "label": "input_fastq2",
      "sbg:y": 112.3809632214292,
      "type": [
        "File"
      ],
      "sbg:fileTypes": "FASTQ, FQ",
      "sbg:x": -92.61906068665672,
      "id": "#input_fastq2"
    },
    {
      "label": "input_fastq1",
      "sbg:y": 292.1428951081788,
      "type": [
        "File"
      ],
      "sbg:fileTypes": "FASTQ, FQ",
      "sbg:x": -92.85715050924414,
      "id": "#input_fastq1"
    },
    {
      "sbg:includeInPorts": true,
      "label": "chromosome",
      "sbg:y": 75.00000176164846,
      "sbg:x": 513.3333528041843,
      "description": "Input chromosomes as an array of strings (one Chr per field in Tasks page)",
      "type": [
        {
          "items": "string",
          "type": "array"
        }
      ],
      "id": "#chromosome"
    },
    {
      "sbg:includeInPorts": true,
      "label": "output_dir",
      "sbg:y": -35.00001610650014,
      "sbg:x": -110.00001923243272,
      "type": [
        "null",
        "string"
      ],
      "id": "#output_dir"
    },
    {
      "sbg:includeInPorts": false,
      "type": [
        "int"
      ],
      "sbg:stageInput": null,
      "sbg:suggestedValue": 50000,
      "required": true,
      "id": "#contact_matrix_binsize"
    },
    {
      "id": "#output_prefix",
      "sbg:suggestedValue": "fabamout",
      "type": [
        "string"
      ]
    }
  ],
  "requirements": [],
  "sbg:modifiedBy": "gaurav",
  "class": "Workflow",
  "sbg:validationErrors": [],
  "sbg:createdOn": 1464818096,
  "sbg:canvas_zoom": 0.5999999999999996,
  "sbg:sbgMaintained": false,
  "sbg:contributors": [
    "alver",
    "gaurav",
    "duplexa"
  ],
  "sbg:image_url": "https://brood.sbgenomics.com/static/gaurav/4dn/gitar-workflow/9.png",
  "sbg:canvas_x": 138,
  "sbg:id": "gaurav/4dn/gitar-workflow/9"
}
