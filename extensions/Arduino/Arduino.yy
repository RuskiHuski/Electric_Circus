{
    "id": "40c6ff28-5d55-4fac-a2aa-7acc1c45c327",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "Arduino",
    "IncludedResources": [
        "Included Files\\Arduino.dll"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2019-16-02 11:10:23",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "867fbc58-6af3-40bf-9dd6-43fe903e7f5e",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 52777100251200,
            "filename": "Arduino.dll",
            "final": "",
            "functions": [
                {
                    "id": "78a00f1e-5a92-4d4f-b325-05711b4f8fc0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "arduinoCreate",
                    "help": "arduino_create(com, baud)",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_create",
                    "returnType": 2
                },
                {
                    "id": "5c7ee53d-eaf8-48a9-a21a-85a5b8830e9c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduinoConnected",
                    "help": "arduino_connected(id)",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_connected",
                    "returnType": 2
                },
                {
                    "id": "0ab8fbb4-47e8-4e0a-94dc-21dd33fda318",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "arduinoRead",
                    "help": "arduino_read(id, length)",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_read",
                    "returnType": 1
                },
                {
                    "id": "e72c6b34-b372-4ec2-b732-76190fc45cf7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "arduinoReadUntil",
                    "help": "arduino_read_to(id, char)",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_read_to",
                    "returnType": 1
                },
                {
                    "id": "71e788bd-3744-4746-8e20-3d921090ffd6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduinoReadLine",
                    "help": "arduino_read_line(id)",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_read_line",
                    "returnType": 1
                },
                {
                    "id": "73be6b34-7866-425a-baee-4a60ed26cc76",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        2,
                        1,
                        2
                    ],
                    "externalName": "arduinoWrite",
                    "help": "arduino_write(id, buffer, length)",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_write",
                    "returnType": 2
                },
                {
                    "id": "e4d59bee-d0db-4f83-b262-79c3da0918cb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "arduinoDelete",
                    "help": "arduino_delete(id)",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_delete",
                    "returnType": 2
                },
                {
                    "id": "e1b0dc62-0ea4-4d7d-88b5-207a36229524",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "arduinoDestoy",
                    "help": "arduino_destroy()",
                    "hidden": false,
                    "kind": 12,
                    "name": "arduino_destroy",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\Arduino.dll",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "com.buff.arduino",
    "productID": "78168FDB8137426DEB1DCA5EA9FF248B",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.1"
}