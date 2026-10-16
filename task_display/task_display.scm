{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "task_display Export"
          },
          "specification": {
            "text": "@EventDriven\r\n@SuperSteps(no)\r\n\r\n\r\ninterface:\r\n    in event EV_DSP_UPDATE\r\n    in event EV_DSP_IDLE\r\n    \r\n    var column: integer"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -887,
          "y": -50
        },
        "size": {
          "height": 60,
          "width": 136
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_IDLE",
            "fontSize": 11
          }
        },
        "id": "14952b96-e72b-4491-a189-1405d5877f1e",
        "z": 6
      },
      {
        "position": {
          "x": -274,
          "y": 219
        },
        "size": {
          "height": 60,
          "width": 136
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_WRITE_LINE2",
            "fontSize": 11
          }
        },
        "id": "8856ac73-a8aa-4c87-80b5-a92d5954c1a6",
        "z": 23,
        "embeds": [
          "5c2a6341-c753-4a14-ae49-bbbef8d611df"
        ]
      },
      {
        "position": {
          "x": -274,
          "y": 73
        },
        "size": {
          "height": 60,
          "width": 136
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_SET_POS_LINE2",
            "fontSize": 11
          }
        },
        "id": "50d31670-76cb-4d6c-815d-96d4baa40d44",
        "z": 24
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8856ac73-a8aa-4c87-80b5-a92d5954c1a6"
        },
        "target": {
          "id": "14952b96-e72b-4491-a189-1405d5877f1e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "52.941%",
              "dy": "60%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_DSP_IDLE [column >= 16]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1dc77a01-aadf-42dd-8c3f-297005d4300f",
        "z": 25,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "50d31670-76cb-4d6c-815d-96d4baa40d44"
        },
        "target": {
          "id": "8856ac73-a8aa-4c87-80b5-a92d5954c1a6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "49.265%",
              "dy": "26.667%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "always / column = 0"
              }
            },
            "position": {
              "distance": 0.5116279069767442,
              "offset": -70,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "dac7203f-df25-4594-b80a-3061f58e710b",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8856ac73-a8aa-4c87-80b5-a92d5954c1a6"
        },
        "target": {
          "id": "8856ac73-a8aa-4c87-80b5-a92d5954c1a6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.853%",
              "dy": "28.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[column < 16] / column++"
              }
            },
            "position": {
              "distance": 0.764344488008156,
              "offset": 70.61531066894531,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "5c2a6341-c753-4a14-ae49-bbbef8d611df",
        "z": 29,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [],
        "parent": "8856ac73-a8aa-4c87-80b5-a92d5954c1a6"
      },
      {
        "position": {
          "x": -1043,
          "y": -27.5
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "b6a9a533-c24f-472a-9b75-0d93a0401fe2",
        "z": 30,
        "embeds": [
          "a8a94fe4-1082-4374-9be2-0a005e14f809"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -1043,
          "y": -12.5
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "a8a94fe4-1082-4374-9be2-0a005e14f809",
        "z": 31,
        "parent": "b6a9a533-c24f-472a-9b75-0d93a0401fe2"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "b6a9a533-c24f-472a-9b75-0d93a0401fe2"
        },
        "target": {
          "id": "14952b96-e72b-4491-a189-1405d5877f1e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "38.235%",
              "dy": "55%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "9ad81d03-961e-4c7d-b82d-d85203e5fecc",
        "z": 32,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -275,
          "y": -52
        },
        "size": {
          "height": 60,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_WRITE_LINE1",
            "fontSize": 11
          }
        },
        "id": "333dcc56-efbb-4070-8a42-2183e6a9836c",
        "z": 35,
        "embeds": [
          "4cc28bd8-15be-479f-a553-af5d9b3b1def"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "333dcc56-efbb-4070-8a42-2183e6a9836c"
        },
        "target": {
          "id": "50d31670-76cb-4d6c-815d-96d4baa40d44",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "49.265%",
              "dy": "23.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[column >= 16]"
              }
            },
            "position": {
              "distance": 0.619334705059345,
              "offset": -49,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "cd3ae638-a993-487b-8fd4-87d58559b1a6",
        "z": 36,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "333dcc56-efbb-4070-8a42-2183e6a9836c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "89.928%",
              "dy": "3.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "333dcc56-efbb-4070-8a42-2183e6a9836c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "15.827%",
              "dy": "0%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "[column < 16] / column++"
              }
            },
            "position": {
              "distance": 0.494883896406589,
              "offset": 12,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "4cc28bd8-15be-479f-a553-af5d9b3b1def",
        "z": 36,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -178,
            "y": -104
          }
        ],
        "parent": "333dcc56-efbb-4070-8a42-2183e6a9836c"
      },
      {
        "position": {
          "x": -586,
          "y": -50
        },
        "size": {
          "height": 61,
          "width": 137
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_DSP_SET_POS_LINE1",
            "fontSize": 11
          }
        },
        "id": "6c951b0d-30df-4999-805e-a5e82bf4a4fa",
        "z": 41
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "14952b96-e72b-4491-a189-1405d5877f1e"
        },
        "target": {
          "id": "6c951b0d-30df-4999-805e-a5e82bf4a4fa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "51.095%",
              "dy": "22.951%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_DSP_UPDATE / column = 0"
              }
            },
            "position": {
              "distance": 0.5069303692511793,
              "offset": -22,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "3d7b1261-2508-420d-8d24-68e615da5c19",
        "z": 42,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "6c951b0d-30df-4999-805e-a5e82bf4a4fa"
        },
        "target": {
          "id": "333dcc56-efbb-4070-8a42-2183e6a9836c",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "10.791%",
              "dy": "45%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "always / column = 0"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "41271b40-0f53-44c3-9946-e17d881f6faf",
        "z": 42,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "TaskDisplay",
          "statemachinePrefix": "taskDisplay",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}