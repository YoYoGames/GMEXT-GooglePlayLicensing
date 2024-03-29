{
    "resourceType": "GMExtension",
    "resourceVersion": "1.2",
    "name": "GooglePlayLicensingExtension",
    "androidactivityinject": "",
    "androidclassname": "GooglePlayLicensingAsExt",
    "androidcodeinjection": "<YYAndroidGradleDependencies>\r\n\r\ncompile 'org.jbundle.util.osgi.wrapped:org.jbundle.util.osgi.wrapped.org.apache.http.client:4.1.2'\r\n</YYAndroidGradleDependencies>\r\n\r\n",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidPermissions": [
        "com.android.vending.BILLING"
    ],
    "androidProps": true,
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 8,
    "date": "2019-01-16T00:15:30",
    "description": "",
    "exportToGame": true,
    "extensionVersion": "2.6.0",
    "files": [
        {
            "resourceType": "GMExtensionFile",
            "resourceVersion": "1.0",
            "name": "",
            "constants": [
                {
                    "resourceType": "GMExtensionConstant",
                    "resourceVersion": "1.0",
                    "name": "GooglePlayLicensingExtension_RETRY",
                    "hidden": false,
                    "value": "291"
                }
            ],
            "copyToTargets": 8,
            "filename": "GooglePlayLicensingAsExt.ext",
            "final": "",
            "functions": [
                {
                    "resourceType": "GMExtensionFunction",
                    "resourceVersion": "1.0",
                    "name": "GooglePlayLicensing_CheckLicensing",
                    "argCount": 0,
                    "args": [],
                    "documentation": "",
                    "externalName": "GooglePlayLicensing_CheckLicensing",
                    "help": "GooglePlayLicensing_CheckLicensing()",
                    "hidden": false,
                    "kind": 4,
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 4,
            "order": [],
            "origname": "extensions\\GooglePlayLicensingAsExt.ext",
            "ProxyFiles": [],
            "uncompress": false,
            "usesRunnerInterface": false
        }
    ],
    "gradleinject": "\r\n\r\ncompile 'org.jbundle.util.osgi.wrapped:org.jbundle.util.osgi.wrapped.org.apache.http.client:4.1.2'\r\n",
    "hasConvertedCodeInjection": true,
    "helpfile": "",
    "HTML5CodeInjection": "",
    "html5Props": false,
    "IncludedResources": [],
    "installdir": "",
    "iosCocoaPodDependencies": "",
    "iosCocoaPods": "",
    "ioscodeinjection": "",
    "iosdelegatename": "",
    "iosplistinject": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [],
    "iosThirdPartyFrameworkEntries": [],
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": [
        {
            "resourceType": "GMExtensionOption",
            "resourceVersion": "1.0",
            "name": "ManualCallback",
            "defaultValue": "False",
            "description": "",
            "displayName": "Manual Callback",
            "exportToINI": false,
            "extensionId": null,
            "guid": "31b3a236-3684-48a1-84a2-d8277396514c",
            "hidden": false,
            "listItems": [],
            "optType": 0
        }
    ],
    "optionsFile": "options.json",
    "packageId": "com.yoyogames.googleplaylicensingextension",
    "parent": {
        "name": "Extensions",
        "path": "folders/Google Play Licensing/Extensions.yy"
    },
    "productId": "6C049D182ECD002FCA87540902AF4A74",
    "sourcedir": "",
    "supportedTargets": 8,
    "tvosclassname": "",
    "tvosCocoaPodDependencies": "",
    "tvosCocoaPods": "",
    "tvoscodeinjection": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [],
    "tvosThirdPartyFrameworkEntries": []
}