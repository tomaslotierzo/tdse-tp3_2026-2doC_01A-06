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
            "text": "system_setup_menu Export"
          },
          "specification": {
            "text": "@EventDriven\r\n@SuperSteps(no)\r\n\r\ninterface:\r\n\tin event EV_ENTER\r\n\tin event EV_NEXT\r\n\tin event EV_ESCAPE\r\n\r\n    var id_motor: integer\r\n\r\n\tvar m1_power: boolean = true\r\n\tvar m1_speed: integer = 8\r\n\tvar m1_spin: string = \"L\"\r\n\r\n\tvar m2_power: boolean = true\r\n\tvar m2_speed: integer = 8\r\n\tvar m2_spin: string = \"L\""
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -52,
          "y": -95
        },
        "size": {
          "height": 61,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_MAIN",
            "fontSize": 11
          }
        },
        "id": "4d9c28ba-b871-4690-8697-ac8e22cfcd64",
        "z": 5
      },
      {
        "position": {
          "x": 13,
          "y": -210
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "200bb111-c9f5-4f9c-a8ad-b7b3c91ae3fc",
        "z": 20,
        "embeds": [
          "165b02bc-25ef-42bf-8613-47e38afce4eb"
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
          "x": 13,
          "y": -195
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "165b02bc-25ef-42bf-8613-47e38afce4eb",
        "z": 21,
        "parent": "200bb111-c9f5-4f9c-a8ad-b7b3c91ae3fc"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "200bb111-c9f5-4f9c-a8ad-b7b3c91ae3fc"
        },
        "target": {
          "id": "4d9c28ba-b871-4690-8697-ac8e22cfcd64",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "53.237%",
              "dy": "45.902%",
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
        "id": "920a5390-a514-4dd6-8423-7ef2cfa3d58e",
        "z": 22,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -265,
          "y": 96
        },
        "size": {
          "height": 61,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_MOTOR_1",
            "fontSize": 11
          }
        },
        "id": "82f396c6-7d92-4a3c-a946-22eb2c326038",
        "z": 25
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "4d9c28ba-b871-4690-8697-ac8e22cfcd64"
        },
        "target": {
          "id": "82f396c6-7d92-4a3c-a946-22eb2c326038",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.36%",
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
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.35212889209300824,
              "offset": -10.729263637712725,
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
        "id": "dcaee62f-a441-41d1-8327-0579b7e1f2ca",
        "z": 26,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 726,
          "y": 301
        },
        "size": {
          "height": 61,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SPIN",
            "fontSize": 11
          }
        },
        "id": "7346576c-f454-4176-8cbb-83ecdce47088",
        "z": 34
      },
      {
        "position": {
          "x": -53,
          "y": 432
        },
        "size": {
          "height": 60,
          "width": 98
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_ON",
            "fontSize": 11
          }
        },
        "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa",
        "z": 39,
        "embeds": []
      },
      {
        "position": {
          "x": -54,
          "y": 559
        },
        "size": {
          "height": 63,
          "width": 96
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_OFF",
            "fontSize": 11
          }
        },
        "id": "42094f06-99da-4de4-9774-2077bc2ca514",
        "z": 40,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa"
        },
        "target": {
          "id": "42094f06-99da-4de4-9774-2077bc2ca514",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "27.338%",
              "dy": "47.541%",
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
                "text": "EV_NEXT"
              }
            },
            "position": {
              "offset": 24,
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
        "id": "148c8b16-c452-4667-8ffc-50450538cb7e",
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
          "id": "42094f06-99da-4de4-9774-2077bc2ca514"
        },
        "target": {
          "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "71.223%",
              "dy": "67.213%",
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
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.5294117647058824,
              "offset": 24,
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
        "id": "7138629a-123f-4369-bba4-f9c36068ad40",
        "z": 48,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 316,
          "y": 302
        },
        "size": {
          "height": 61,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_SPEED",
            "fontSize": 11
          }
        },
        "id": "89aee46b-7c0a-4e60-979e-66be81720107",
        "z": 56
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "89aee46b-7c0a-4e60-979e-66be81720107"
        },
        "target": {
          "id": "7346576c-f454-4176-8cbb-83ecdce47088",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25.18%",
              "dy": "42.623%",
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
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.7546125461254612,
              "offset": -12,
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
        "id": "3240641a-7756-42ca-a169-c96cfcd5491f",
        "z": 57,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 745,
          "y": 437
        },
        "size": {
          "height": 102,
          "width": 94
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_LEFT",
            "fontSize": 11
          }
        },
        "id": "89110717-6466-44da-9808-b2a1c50212e6",
        "z": 86,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7346576c-f454-4176-8cbb-83ecdce47088"
        },
        "target": {
          "id": "89110717-6466-44da-9808-b2a1c50212e6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "24.49%",
              "dy": "35%",
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
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.5133333333333333,
              "offset": 31,
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
        "id": "d0c77b8e-1a05-44f2-978b-4eb1a423a820",
        "z": 95,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "89110717-6466-44da-9808-b2a1c50212e6"
        },
        "target": {
          "id": "7346576c-f454-4176-8cbb-83ecdce47088",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "71.223%",
              "dy": "75.41%",
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
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.4866666666666667,
              "offset": 30,
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
        "id": "d8256c3a-e958-4fd5-8365-0c60d629466e",
        "z": 96,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": -51,
          "y": 301
        },
        "size": {
          "height": 61,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_POWER",
            "fontSize": 11
          }
        },
        "id": "fe93ba90-959d-49bd-9795-39f088104bf9",
        "z": 102
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7346576c-f454-4176-8cbb-83ecdce47088"
        },
        "target": {
          "id": "fe93ba90-959d-49bd-9795-39f088104bf9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "74.82%",
              "dy": "16.393%",
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
                "text": "EV_NEXT"
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
        "id": "f0671ddf-7737-4eab-a4e9-a85263b6af77",
        "z": 103,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 484,
            "y": 264
          },
          {
            "x": 251,
            "y": 264
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fe93ba90-959d-49bd-9795-39f088104bf9"
        },
        "target": {
          "id": "89aee46b-7c0a-4e60-979e-66be81720107",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "5.755%",
              "dy": "45.902%",
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
                "text": "EV_NEXT"
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
        "id": "0ae1aaef-e511-4b2a-8931-e3f133931c7a",
        "z": 103,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fe93ba90-959d-49bd-9795-39f088104bf9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "16.547%",
              "dy": "73.77%",
              "rotate": true
            }
          },
          "priority": true
        },
        "target": {
          "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25.18%",
              "dy": "11.475%",
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
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.20732070189172466,
              "offset": -27.8858642578125,
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
        "id": "743cb426-0b2c-49f6-8538-af1ccc1e4315",
        "z": 103,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 262,
          "y": 104
        },
        "size": {
          "height": 61,
          "width": 139
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_MOTOR_2",
            "fontSize": 11
          }
        },
        "id": "d5a76d15-ee46-4b16-ad30-7913af81c30f",
        "z": 145
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "82f396c6-7d92-4a3c-a946-22eb2c326038"
        },
        "target": {
          "id": "d5a76d15-ee46-4b16-ad30-7913af81c30f",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "10.072%",
              "dy": "57.377%",
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
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.3866080156402737,
              "offset": 12,
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
        "id": "2b375740-cf47-4abd-be4e-447c94716715",
        "z": 146,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d5a76d15-ee46-4b16-ad30-7913af81c30f"
        },
        "target": {
          "id": "82f396c6-7d92-4a3c-a946-22eb2c326038",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.806%",
              "dy": "26.23%",
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
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.4393939393939394,
              "offset": 10,
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
        "id": "5f0bc35b-f404-48b4-b988-d33b0b8615c9",
        "z": 146,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "82f396c6-7d92-4a3c-a946-22eb2c326038"
        },
        "target": {
          "id": "fe93ba90-959d-49bd-9795-39f088104bf9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "3.597%",
              "dy": "14.754%",
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
                "text": "EV_ENTER / id_motor = 1"
              }
            },
            "position": {
              "distance": 0.7957141760160837,
              "offset": -13.384674072265625,
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
        "id": "3205780d-0832-41a2-a9f4-ba61b6ebfac6",
        "z": 150,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -171,
            "y": 216
          }
        ]
      },
      {
        "position": {
          "x": -354,
          "y": 476
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "54f75b27-d867-42d0-9bda-d8203432e9ec",
        "z": 158
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa"
        },
        "target": {
          "id": "54f75b27-d867-42d0-9bda-d8203432e9ec"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {}
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
        "id": "be452abf-2e9e-4377-8796-ece10b8ca786",
        "z": 159,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "54f75b27-d867-42d0-9bda-d8203432e9ec"
        },
        "target": {
          "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "4.082%",
              "dy": "35%",
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
                "text": "[id_motor == 1] / m1_power = true"
              }
            },
            "position": {
              "distance": 0.4903979443754001,
              "offset": 8,
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
        "id": "02805aa7-0c30-4df3-86e3-aab21e62c9ae",
        "z": 159,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "54f75b27-d867-42d0-9bda-d8203432e9ec"
        },
        "target": {
          "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "15.306%",
              "dy": "10%",
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
                "text": "[id_motor == 2] / m2_power = true"
              }
            },
            "position": {
              "distance": 0.5183246459158101,
              "offset": -9,
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
        "id": "ef1d87d0-caac-4b53-b816-878b810d290b",
        "z": 159,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -279,
            "y": 438
          }
        ]
      },
      {
        "position": {
          "x": -352,
          "y": 596
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "a9379615-c862-4999-b569-6e1e7e386f1b",
        "z": 165
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "42094f06-99da-4de4-9774-2077bc2ca514"
        },
        "target": {
          "id": "a9379615-c862-4999-b569-6e1e7e386f1b"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.49293211510178303,
              "offset": -8.000029296875027,
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
        "id": "0c2577af-cd9b-4f10-976c-7f1e3bd3a46c",
        "z": 166,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a9379615-c862-4999-b569-6e1e7e386f1b"
        },
        "target": {
          "id": "42094f06-99da-4de4-9774-2077bc2ca514",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "14.583%",
              "dy": "31.746%",
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
                "text": "[id_motor == 2] / m2_power = false"
              }
            },
            "position": {
              "distance": 0.4653067542754417,
              "offset": -11,
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
        "id": "391b5000-d8a7-4f2a-b532-aea4ad54b663",
        "z": 168,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -338.5,
            "y": 555
          },
          {
            "x": -88,
            "y": 555
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a9379615-c862-4999-b569-6e1e7e386f1b"
        },
        "target": {
          "id": "42094f06-99da-4de4-9774-2077bc2ca514",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "3.125%",
              "dy": "53.968%",
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
                "text": "[id_motor == 1] / m1_power = false"
              }
            },
            "position": {
              "distance": 0.4440810391103766,
              "offset": 9,
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
        "id": "ede8e7e8-2bed-4925-8f87-f022483cf2a0",
        "z": 169,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -339.5,
            "y": 572
          },
          {
            "x": -103,
            "y": 572
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3b1d42e8-b002-4f26-835c-3a2609cdc7fa"
        },
        "target": {
          "id": "fe93ba90-959d-49bd-9795-39f088104bf9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "64.748%",
              "dy": "81.967%",
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
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.44285714285714284,
              "offset": 28,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "1d0fddda-f17d-46c7-a9bc-de9447ff597c",
        "z": 170,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 303,
          "y": 508
        },
        "size": {
          "height": 66,
          "width": 116
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_CHANGE_SPEED",
            "fontSize": 11
          }
        },
        "id": "81171807-67f8-422c-a968-970501804d11",
        "z": 180,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "89aee46b-7c0a-4e60-979e-66be81720107"
        },
        "target": {
          "id": "81171807-67f8-422c-a968-970501804d11",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "25.899%",
              "dy": "42.623%",
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
                "text": "EV_ENTER"
              }
            },
            "position": {
              "distance": 0.4857142857142857,
              "offset": 30,
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
        "id": "e45446a7-8074-4181-8bc5-a30f36e8c03f",
        "z": 181,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "81171807-67f8-422c-a968-970501804d11"
        },
        "target": {
          "id": "89aee46b-7c0a-4e60-979e-66be81720107",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "65.468%",
              "dy": "62.295%",
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
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.5285714285714286,
              "offset": 29,
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
        "id": "83f5cd13-0525-44e4-84c4-6ad5e96524e9",
        "z": 181,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 358,
          "y": 814
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "9b9f774f-e67d-4b87-8e07-ed457dbbdd0a",
        "z": 182
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "81171807-67f8-422c-a968-970501804d11"
        },
        "target": {
          "id": "9b9f774f-e67d-4b87-8e07-ed457dbbdd0a"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.3532110091743119,
              "offset": -22,
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
        "id": "1f186e14-c714-4a4c-bba8-03862f6661c6",
        "z": 183,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9b9f774f-e67d-4b87-8e07-ed457dbbdd0a"
        },
        "target": {
          "id": "81171807-67f8-422c-a968-970501804d11",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "7.857%",
              "dy": "68.033%",
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
                "text": "[id_motor == 2 && m2_speed > 9]\n/ m2_speed = 0"
              }
            },
            "position": {
              "distance": 0.44085438885358047,
              "offset": -90,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "b4ac5165-d833-4c13-bcbd-7189ef5f44df",
        "z": 183,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 122,
            "y": 827.53
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9b9f774f-e67d-4b87-8e07-ed457dbbdd0a"
        },
        "target": {
          "id": "81171807-67f8-422c-a968-970501804d11",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.367%",
              "dy": "90.164%",
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
                "text": "[id_motor == 1 && m1_speed < 9]\n/ m1_speed++"
              }
            },
            "position": {
              "distance": 0.33420821576046084,
              "offset": 93.98192485465401,
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
        "id": "5aa61853-d0ac-4eab-905b-df856e09c9da",
        "z": 183,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 408.99,
            "y": 821.53
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9b9f774f-e67d-4b87-8e07-ed457dbbdd0a"
        },
        "target": {
          "id": "81171807-67f8-422c-a968-970501804d11",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "14.388%",
              "dy": "91.803%",
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
                "text": "[id_motor == 2 && m2_speed < 9]\n/ m2_speed++"
              }
            },
            "position": {
              "distance": 0.3380181658815333,
              "offset": -96.97107505483963,
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
        "id": "3b467953-3a84-42df-be72-0528f2e96ae3",
        "z": 183,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9b9f774f-e67d-4b87-8e07-ed457dbbdd0a"
        },
        "target": {
          "id": "81171807-67f8-422c-a968-970501804d11",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.286%",
              "dy": "68.033%",
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
                "text": "[id_motor == 1 && m1_speed > 9]\n/ m1_speed = 0"
              }
            },
            "position": {
              "distance": 0.4231100551698655,
              "offset": 91,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "4"
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
        "id": "afae1301-386d-40b3-9938-113994aee17c",
        "z": 184,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 610,
            "y": 826.53
          }
        ]
      },
      {
        "position": {
          "x": 746,
          "y": 632
        },
        "size": {
          "height": 106,
          "width": 96
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_RIGHT",
            "fontSize": 11
          }
        },
        "id": "8835751b-07d0-4eb9-8ad3-3d09dbef317a",
        "z": 187,
        "embeds": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "89110717-6466-44da-9808-b2a1c50212e6"
        },
        "target": {
          "id": "8835751b-07d0-4eb9-8ad3-3d09dbef317a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "27.338%",
              "dy": "47.541%",
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
                "text": "EV_NEXT"
              }
            },
            "position": {
              "offset": 24,
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
        "id": "a19d32d2-b8b1-48e7-b9e5-fbb127dadb6e",
        "z": 188,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8835751b-07d0-4eb9-8ad3-3d09dbef317a"
        },
        "target": {
          "id": "89110717-6466-44da-9808-b2a1c50212e6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "71.223%",
              "dy": "67.213%",
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
                "text": "EV_NEXT"
              }
            },
            "position": {
              "distance": 0.5294117647058824,
              "offset": 24,
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
        "id": "71aa020d-d4c0-492c-9cd8-40a89115ea7b",
        "z": 188,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 1080,
          "y": 705
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "36afd600-1579-4d31-81bb-95949c6ad2b3",
        "z": 197
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8835751b-07d0-4eb9-8ad3-3d09dbef317a"
        },
        "target": {
          "id": "36afd600-1579-4d31-81bb-95949c6ad2b3"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {}
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
        "id": "5b9a741d-c476-420e-9db0-435a6fd751ec",
        "z": 198,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36afd600-1579-4d31-81bb-95949c6ad2b3"
        },
        "target": {
          "id": "8835751b-07d0-4eb9-8ad3-3d09dbef317a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "90.625%",
              "dy": "44.34%",
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
                "text": "[id_motor == 1] / m1_spin = \"R\""
              }
            },
            "position": {
              "distance": 0.5298447252904245,
              "offset": 10,
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
        "id": "0c817cec-1a8a-45ba-94da-79ae45e6ca31",
        "z": 199,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36afd600-1579-4d31-81bb-95949c6ad2b3"
        },
        "target": {
          "id": "8835751b-07d0-4eb9-8ad3-3d09dbef317a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "94.792%",
              "dy": "15.094%",
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
                "text": "[id_motor == 2] / m2_spin = \"R\""
              }
            },
            "position": {
              "distance": 0.590286032671978,
              "offset": 13,
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
        "id": "5627a558-b499-4555-ad81-e1b9a17ce147",
        "z": 200,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 1078,
          "y": 521
        },
        "size": {
          "width": 15,
          "height": 15
        },
        "type": "Choice",
        "attrs": {},
        "id": "9f056beb-adfa-4f6e-920f-d620a9cf2f03",
        "z": 202
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "89110717-6466-44da-9808-b2a1c50212e6"
        },
        "target": {
          "id": "9f056beb-adfa-4f6e-920f-d620a9cf2f03"
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_ENTER"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "d6a2aeb7-5056-46fc-82b7-d16bc4c44596",
        "z": 203,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9f056beb-adfa-4f6e-920f-d620a9cf2f03"
        },
        "target": {
          "id": "89110717-6466-44da-9808-b2a1c50212e6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.489%",
              "dy": "48.039%",
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
                "text": "[id_motor == 1] / m1_spin = \"L\""
              }
            },
            "position": {
              "distance": 0.5503503644163402,
              "offset": 11,
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
        "id": "ab4ea9b9-b472-4a37-9e37-5d654eac09fc",
        "z": 203,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9f056beb-adfa-4f6e-920f-d620a9cf2f03"
        },
        "target": {
          "id": "89110717-6466-44da-9808-b2a1c50212e6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "95.745%",
              "dy": "13.725%",
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
                "text": "[id_motor == 2] / m2_spin = \"L\""
              }
            },
            "position": {
              "distance": 0.6086092417204145,
              "offset": 11,
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
        "id": "cf640950-a499-4d42-a644-d6fac4f34e6f",
        "z": 204,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "d5a76d15-ee46-4b16-ad30-7913af81c30f"
        },
        "target": {
          "id": "fe93ba90-959d-49bd-9795-39f088104bf9",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "57.554%",
              "dy": "14.754%",
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
                "text": "EV_ENTER / id_motor = 2"
              }
            },
            "position": {}
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
        "id": "99e60297-c323-4377-80e7-84b602bce81e",
        "z": 205,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 175,
            "y": 223
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "fe93ba90-959d-49bd-9795-39f088104bf9"
        },
        "target": {
          "id": "82f396c6-7d92-4a3c-a946-22eb2c326038",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "92.086%",
              "dy": "80.328%",
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
                "text": "EV_ESCAPE"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "0834ca19-23ac-4ad5-80df-40cb67498b14",
        "z": 206,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -35,
            "y": 237
          },
          {
            "x": -132,
            "y": 237
          }
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "82f396c6-7d92-4a3c-a946-22eb2c326038"
        },
        "target": {
          "id": "4d9c28ba-b871-4690-8697-ac8e22cfcd64",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "6.475%",
              "dy": "85.246%",
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
                "text": "EV_ESCAPE"
              }
            },
            "position": {
              "distance": 0.40596739797609827,
              "offset": 31,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "881280d8-c323-42e6-a189-e2e6832ae9bd",
        "z": 207,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": -172,
            "y": 20
          }
        ]
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
          "moduleName": "SystemSetupMenu",
          "statemachinePrefix": "systemSetupMenu",
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