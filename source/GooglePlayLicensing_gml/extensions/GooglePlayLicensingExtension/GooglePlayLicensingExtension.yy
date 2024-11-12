{
  "$GMExtension":"",
  "%Name":"GooglePlayLicensingExtension",
  "androidactivityinject":"",
  "androidclassname":"GooglePlayLicensingAsExt",
  "androidcodeinjection":"<YYAndroidGradleDependencies>\r\n\r\ncompile 'org.jbundle.util.osgi.wrapped:org.jbundle.util.osgi.wrapped.org.apache.http.client:4.1.2'\r\n</YYAndroidGradleDependencies>\r\n\r\n<YYAndroidTopLevelGradleEnd>\r\nsubprojects { subproject ->\r\n    if (subproject.name == '${YYEXTOPT_GooglePlayLicensingExtension_sdkFolderName}') {\r\n        subproject.plugins.withId('com.android.${YYEXTOPT_GooglePlayLicensingExtension_sdkFolderName}') {\r\n            subproject.android {\r\n                // Specify the namespace\r\n                namespace = '${YYAndroidPackageName}'\r\n            }\r\n        }\r\n    }\r\n}\r\n</YYAndroidTopLevelGradleEnd>",
  "androidinject":"",
  "androidmanifestinject":"",
  "androidPermissions":[
    "com.android.vending.BILLING",
  ],
  "androidProps":true,
  "androidsourcedir":"",
  "author":"",
  "classname":"",
  "copyToTargets":8,
  "description":"",
  "exportToGame":true,
  "extensionVersion":"2.6.0",
  "files":[
    {"$GMExtensionFile":"","%Name":"","constants":[
        {"$GMExtensionConstant":"","%Name":"GooglePlayLicensingExtension_RETRY","hidden":false,"name":"GooglePlayLicensingExtension_RETRY","resourceType":"GMExtensionConstant","resourceVersion":"2.0","value":"291",},
      ],"copyToTargets":8,"filename":"GooglePlayLicensingAsExt.ext","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"GooglePlayLicensing_CheckLicensing","argCount":0,"args":[],"documentation":"","externalName":"GooglePlayLicensing_CheckLicensing","help":"GooglePlayLicensing_CheckLicensing()","hidden":false,"kind":4,"name":"GooglePlayLicensing_CheckLicensing","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":4,"name":"","order":[],"origname":"extensions\\GooglePlayLicensingAsExt.ext","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject":"\r\n\r\ncompile 'org.jbundle.util.osgi.wrapped:org.jbundle.util.osgi.wrapped.org.apache.http.client:4.1.2'\r\n",
  "hasConvertedCodeInjection":true,
  "helpfile":"",
  "HTML5CodeInjection":"",
  "html5Props":false,
  "IncludedResources":[],
  "installdir":"",
  "iosCocoaPodDependencies":"",
  "iosCocoaPods":"",
  "ioscodeinjection":"",
  "iosdelegatename":"",
  "iosplistinject":"",
  "iosProps":false,
  "iosSystemFrameworkEntries":[],
  "iosThirdPartyFrameworkEntries":[],
  "license":"Free to use, also for commercial games.",
  "maccompilerflags":"",
  "maclinkerflags":"",
  "macsourcedir":"",
  "name":"GooglePlayLicensingExtension",
  "options":[
    {"$GMExtensionOption":"","%Name":"ManualCallback","defaultValue":"False","description":"","displayName":"Manual Callback","exportToINI":false,"extensionId":null,"guid":"31b3a236-3684-48a1-84a2-d8277396514c","hidden":false,"listItems":[],"name":"ManualCallback","optType":0,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
    {"$GMExtensionOption":"","%Name":"sdkFolderName","defaultValue":"library","description":"The name of the library folder inside the Sdk folder.","displayName":"SDK Folder Name","exportToINI":false,"extensionId":null,"guid":"8066f778-a967-4190-b790-2f1338ce7783","hidden":false,"listItems":[],"name":"sdkFolderName","optType":2,"resourceType":"GMExtensionOption","resourceVersion":"2.0",},
  ],
  "optionsFile":"options.json",
  "packageId":"com.yoyogames.googleplaylicensingextension",
  "parent":{
    "name":"Extensions",
    "path":"folders/Google Play Licensing/Extensions.yy",
  },
  "productId":"6C049D182ECD002FCA87540902AF4A74",
  "resourceType":"GMExtension",
  "resourceVersion":"2.0",
  "sourcedir":"",
  "supportedTargets":8,
  "tvosclassname":"",
  "tvosCocoaPodDependencies":"",
  "tvosCocoaPods":"",
  "tvoscodeinjection":"",
  "tvosdelegatename":"",
  "tvosmaccompilerflags":"",
  "tvosmaclinkerflags":"",
  "tvosplistinject":"",
  "tvosProps":false,
  "tvosSystemFrameworkEntries":[],
  "tvosThirdPartyFrameworkEntries":[],
}