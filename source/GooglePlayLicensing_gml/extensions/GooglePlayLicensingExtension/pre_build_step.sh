#!/bin/bash

sed -i -e 's/\r$//' "$(dirname "$0")/scriptUtils.sh"
chmod +x "$(dirname "$0")/scriptUtils.sh"
source "$(dirname "$0")/scriptUtils.sh"

# ######################################################################################
# Script Functions

setupAndroid() {
    echo "Copying SDK files into your project."
    optionGetValue "sdkPath" SDK_PATH

    # Resolve the credentials file path and copy it to the Android ProjectFiles folder
    pathResolveExisting "$YYprojectDir" "$SDK_PATH" FOLDER_PATH
    itemCopyTo "${FOLDER_PATH}" "$1/AndroidSource/Sdk"
}

# ######################################################################################
# Script Logic

# Always init the script
scriptInit

# Version locks
optionGetValue "versionStable" RUNTIME_VERSION_STABLE
optionGetValue "versionBeta" RUNTIME_VERSION_BETA
optionGetValue "versionDev" RUNTIME_VERSION_DEV
optionGetValue "versionLTS" RUNTIME_VERSION_LTS

# Version lock
versionLockCheck "$YYruntimeVersion" $RUNTIME_VERSION_STABLE $RUNTIME_VERSION_BETA $RUNTIME_VERSION_RED $RUNTIME_VERSION_LTS

setup$YYPLATFORM_name "$(dirname "$0")"

