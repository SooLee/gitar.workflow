{
  "outputs": [
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_fastq2bam.sorted_bam_pe"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 391.6240561803214,
      "label": "sorted_bam_pe",
      "id": "#sorted_bam_pe",
      "sbg:y": 328.1196788763388
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_bam2hdf5.HiC_project_object_hdf5"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 717.1795962773863,
      "label": "HiC_project_object_hdf5",
      "id": "#HiC_project_object_hdf5",
      "sbg:y": 124.61539063086903
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_bam2hdf5.HiC_distance_function_hdf5"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 939.2309175553464,
      "label": "HiC_distance_function_hdf5",
      "id": "#HiC_distance_function_hdf5",
      "sbg:y": 500.3419382689756
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_hdf52matrix.normalized_fend_contact_matrix"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 1489.2308385555568,
      "label": "normalized_fend_contact_matrix",
      "id": "#normalized_fend_contact_matrix",
      "sbg:y": 190.94018009381435
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 1573.6754030664124,
      "label": "normalized_enrich_contact_matrix",
      "id": "#normalized_enrich_contact_matrix",
      "sbg:y": 330.17099214681946
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_hdf52matrix.expected_enrich_contact_matrix"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 1345.2138202308008,
      "label": "expected_enrich_contact_matrix",
      "id": "#expected_enrich_contact_matrix",
      "sbg:y": 530.5983404200941
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_fastq2bam.split_bam2"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 328.92306357163494,
      "label": "split_bam2",
      "id": "#split_bam2",
      "sbg:y": -50.256409131563785
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_fastq2bam.split_bam1"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 368.92312900836833,
      "label": "split_bam1",
      "id": "#split_bam1",
      "sbg:y": 59.384607461782
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_bam2hdf5.fend_object_hdf5"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 666.1538890691907,
      "label": "fend_object_hdf5",
      "id": "#fend_object_hdf5",
      "sbg:y": 21.538473569430273
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 984.1028403502372,
      "label": "HiC_norm_binning_hdf5",
      "id": "#HiC_norm_binning_hdf5",
      "sbg:y": 357.7436426095023
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_bam2hdf5.HiC_data_object_hdf5"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 777.7437167478082,
      "label": "HiC_data_object_hdf5",
      "id": "#HiC_data_object_hdf5",
      "sbg:y": 558.9744715323862
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_hdf52matrix.observed_contact_matrix"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 1323.0770296232263,
      "label": "observed_contact_matrix",
      "id": "#observed_contact_matrix",
      "sbg:y": 86.15384043744288
    },
    {
      "type": [
        "null",
        "File"
      ],
      "source": [
        "#hictool_hdf52matrix.expected_fend_contact_matrix"
      ],
      "sbg:includeInPorts": true,
      "required": false,
      "sbg:x": 1520.0001224540429,
      "label": "expected_fend_contact_matrix",
      "id": "#expected_fend_contact_matrix",
      "sbg:y": 470.76925607828014
    }
  ],
  "sbg:createdOn": 1468247411,
  "sbg:validationErrors": [],
  "sbg:canvas_x": 1,
  "sbg:id": "gaurav/4dn/gitar-v0-2/6",
  "sbg:revision": 6,
  "steps": [
    {
      "run": {
        "outputs": [
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
            "id": "#sorted_bam_pe",
            "outputBinding": {
              "glob": {
                "script": "$job.inputs.output_dir + '/out_noDup.sort.bam'",
                "engine": "#cwl-js-engine",
                "class": "Expression"
              }
            }
          }
        ],
        "y": 226,
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
            },
            "sbg:includeInPorts": false
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
            "required": true,
            "sbg:fileTypes": "FASTQ, FQ"
          },
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
            "required": true,
            "sbg:fileTypes": "FASTQ, FQ"
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
            "required": false,
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
        "x": 265,
        "successCodes": [],
        "stdin": "",
        "sbg:sbgMaintained": false,
        "id": "gaurav/4dn/fastq2bam/14",
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
      },
      "outputs": [
        {
          "id": "#hictool_fastq2bam.split_bam2"
        },
        {
          "id": "#hictool_fastq2bam.split_bam1"
        },
        {
          "id": "#hictool_fastq2bam.sorted_bam_pe"
        }
      ],
      "inputs": [
        {
          "default": ".",
          "id": "#hictool_fastq2bam.output_dir"
        },
        {
          "source": [
            "#input_fastq2"
          ],
          "id": "#hictool_fastq2bam.input_fastq2"
        },
        {
          "source": [
            "#input_fastq1"
          ],
          "id": "#hictool_fastq2bam.input_fastq1"
        },
        {
          "source": [
            "#bowtie_index"
          ],
          "id": "#hictool_fastq2bam.bowtie_index"
        }
      ],
      "sbg:x": 265,
      "id": "#hictool_fastq2bam",
      "sbg:y": 226
    },
    {
      "run": {
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
            "id": "#HiC_project_object_hdf5",
            "outputBinding": {
              "glob": {
                "script": "$job.inputs.output_dir + '/HiC_project_object.hdf5' ",
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
            "id": "#HiC_data_object_hdf5",
            "outputBinding": {
              "glob": {
                "script": "$job.inputs.output_dir + '/HiC_data_object.hdf5'",
                "engine": "#cwl-js-engine",
                "class": "Expression"
              }
            }
          }
        ],
        "y": 230.38462831423846,
        "sbg:createdOn": 1467989155,
        "sbg:cmdPreview": "run.sh /path/to/input_bam1.bam /path/to/input_bam2.bam",
        "sbg:validationErrors": [],
        "class": "CommandLineTool",
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
              "File"
            ],
            "id": "#input_bam2",
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 2
            },
            "required": true,
            "sbg:fileTypes": "BAM"
          },
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
            "required": true,
            "sbg:fileTypes": "BAM"
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
            "required": false,
            "sbg:fileTypes": "BED"
          }
        ],
        "x": 588.9231050931494,
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
        "id": "gaurav/4dn/bam2hdf5/4",
        "stdout": "",
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
      },
      "outputs": [
        {
          "id": "#hictool_bam2hdf5.fend_object_hdf5"
        },
        {
          "id": "#hictool_bam2hdf5.HiC_project_object_hdf5"
        },
        {
          "id": "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
        },
        {
          "id": "#hictool_bam2hdf5.HiC_distance_function_hdf5"
        },
        {
          "id": "#hictool_bam2hdf5.HiC_data_object_hdf5"
        }
      ],
      "inputs": [
        {
          "default": ".",
          "id": "#hictool_bam2hdf5.output_dir"
        },
        {
          "source": [
            "#hictool_fastq2bam.split_bam2"
          ],
          "id": "#hictool_bam2hdf5.input_bam2"
        },
        {
          "source": [
            "#hictool_fastq2bam.split_bam1"
          ],
          "id": "#hictool_bam2hdf5.input_bam1"
        },
        {
          "source": [
            "#RE_bed"
          ],
          "id": "#hictool_bam2hdf5.RE_bed"
        }
      ],
      "sbg:x": 588.9231050931494,
      "id": "#hictool_bam2hdf5",
      "sbg:y": 230.38462831423846
    },
    {
      "run": {
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
        "y": 228.6923403133314,
        "sbg:createdOn": 1464816740,
        "sbg:cmdPreview": "run.sh /path/to/HiC_norm_binning_hdf5.ext chromosome 0",
        "sbg:validationErrors": [],
        "class": "CommandLineTool",
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
            },
            "required": false
          },
          {
            "type": [
              "null",
              "File"
            ],
            "id": "#fend_object_hdf5",
            "required": false,
            "sbg:fileTypes": "HDF5"
          },
          {
            "type": [
              "int"
            ],
            "sbg:includeInPorts": true,
            "required": true,
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
              {
                "type": "array",
                "items": "string"
              }
            ],
            "id": "#chromosome",
            "inputBinding": {
              "sbg:cmdInclude": true,
              "separate": false,
              "position": 2
            },
            "sbg:includeInPorts": true,
            "required": true
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
            },
            "required": false
          },
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
            "required": true,
            "sbg:fileTypes": "HDF5"
          },
          {
            "type": [
              "null",
              "File"
            ],
            "id": "#HiC_data_object_hdf5",
            "required": false,
            "sbg:fileTypes": "HDF5"
          }
        ],
        "x": 1105.3846988706214,
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
        "id": "gaurav/4dn/bam2matrix2/7",
        "stdout": "",
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
      },
      "outputs": [
        {
          "id": "#hictool_hdf52matrix.observed_contact_matrix"
        },
        {
          "id": "#hictool_hdf52matrix.normalized_fend_contact_matrix"
        },
        {
          "id": "#hictool_hdf52matrix.normalized_enrich_contact_matrix"
        },
        {
          "id": "#hictool_hdf52matrix.expected_fend_contact_matrix"
        },
        {
          "id": "#hictool_hdf52matrix.expected_enrich_contact_matrix"
        }
      ],
      "scatter": "#hictool_hdf52matrix.chromosome",
      "inputs": [
        {
          "default": ".",
          "id": "#hictool_hdf52matrix.output_dir"
        },
        {
          "source": [
            "#hictool_bam2hdf5.fend_object_hdf5"
          ],
          "id": "#hictool_hdf52matrix.fend_object_hdf5"
        },
        {
          "source": [
            "#contact_matrix_binsize"
          ],
          "id": "#hictool_hdf52matrix.contact_matrix_binsize"
        },
        {
          "source": [
            "#chromosome"
          ],
          "id": "#hictool_hdf52matrix.chromosome"
        },
        {
          "source": [
            "#chrlen_file"
          ],
          "id": "#hictool_hdf52matrix.chrlen_file"
        },
        {
          "source": [
            "#hictool_bam2hdf5.HiC_norm_binning_hdf5"
          ],
          "id": "#hictool_hdf52matrix.HiC_norm_binning_hdf5"
        },
        {
          "source": [
            "#hictool_bam2hdf5.HiC_data_object_hdf5"
          ],
          "id": "#hictool_hdf52matrix.HiC_data_object_hdf5"
        }
      ],
      "sbg:x": 1105.3846988706214,
      "id": "#hictool_hdf52matrix",
      "sbg:y": 228.6923403133314
    }
  ],
  "sbg:modifiedBy": "duplexa",
  "label": "GITAR v0.2",
  "hints": [],
  "sbg:createdBy": "duplexa",
  "sbg:project": "gaurav/4dn",
  "inputs": [
    {
      "type": [
        "File"
      ],
      "sbg:fileTypes": "FASTQ, FQ",
      "label": "input_fastq2",
      "id": "#input_fastq2",
      "sbg:x": 83,
      "sbg:y": 66
    },
    {
      "type": [
        "File"
      ],
      "sbg:fileTypes": "FASTQ, FQ",
      "label": "input_fastq1",
      "id": "#input_fastq1",
      "sbg:x": 70.5384664352124,
      "sbg:y": 222.53847149702227
    },
    {
      "type": [
        "null",
        "File"
      ],
      "sbg:fileTypes": "TGZ",
      "label": "bowtie_index",
      "id": "#bowtie_index",
      "sbg:x": 89.53847718662128,
      "sbg:y": 389.46159979718914
    },
    {
      "type": [
        "null",
        "File"
      ],
      "sbg:fileTypes": "BED",
      "label": "RE_bed",
      "id": "#RE_bed",
      "sbg:x": 420.99998982747405,
      "sbg:y": 496.33335367838555
    },
    {
      "type": [
        "null",
        "File"
      ],
      "label": "chrlen_file",
      "id": "#chrlen_file",
      "sbg:x": 749.7779160072636,
      "sbg:y": -18.188064069204135
    },
    {
      "type": [
        "int"
      ],
      "sbg:includeInPorts": true,
      "sbg:x": 995.3846145833035,
      "label": "contact_matrix_binsize",
      "id": "#contact_matrix_binsize",
      "sbg:y": -6.153860611323651
    },
    {
      "type": [
        {
          "type": "array",
          "items": "string"
        }
      ],
      "sbg:includeInPorts": true,
      "sbg:x": 835.3847081280348,
      "label": "chromosome",
      "id": "#chromosome",
      "sbg:y": 75.38460620338324
    }
  ],
  "requirements": [],
  "sbg:canvas_zoom": 0.6499999999999997,
  "sbg:sbgMaintained": false,
  "id": "https://api.sbgenomics.com/v2/apps/gaurav/4dn/gitar-v0-2/6/raw/",
  "class": "Workflow",
  "sbg:revisionsInfo": [
    {
      "sbg:modifiedOn": 1468247411,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 0,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1468247788,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 1,
      "sbg:revisionNotes": "new"
    },
    {
      "sbg:modifiedOn": 1468248067,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 2,
      "sbg:revisionNotes": null
    },
    {
      "sbg:modifiedOn": 1468248130,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 3,
      "sbg:revisionNotes": "PARTIAL (step2-3)"
    },
    {
      "sbg:modifiedOn": 1468256789,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 4,
      "sbg:revisionNotes": "PARTIAL (step2-3)"
    },
    {
      "sbg:modifiedOn": 1468256977,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 5,
      "sbg:revisionNotes": "PARTIAL (step 2-3)"
    },
    {
      "sbg:modifiedOn": 1468257638,
      "sbg:modifiedBy": "duplexa",
      "sbg:revision": 6,
      "sbg:revisionNotes": null
    }
  ],
  "description": "",
  "sbg:canvas_y": 66,
  "sbg:image_url": "https://brood.sbgenomics.com/static/gaurav/4dn/gitar-v0-2/6.png",
  "sbg:latestRevision": 6,
  "sbg:modifiedOn": 1468257638,
  "sbg:contributors": [
    "duplexa"
  ]
}
