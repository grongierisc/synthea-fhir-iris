#!/bin/bash
# Usage install.sh [instanceName]

DIR=$(dirname $0)
if [ "$DIR" = "." ]; then
DIR=$(pwd)
fi

instanceName=$1
password=password

ClassImportDir=$DIR/src
NameSpace=""SYNTHEA""

irissession $instanceName -U USER <<EOF 
sys
sys
zn "HSLIB"
Set appKey = "/synthea/fhir/r4"
Set strategyClass = "SYNTHEA.InteractionsStrategy"
Set metadataConfigKey = "HL7v40"

//Install a Foundation namespace and change to it
Do ##class(HS.HC.Util.Installer).InstallFoundation("$NameSpace")
zn "$NameSpace" 

do \$system.OBJ.ImportDir("$ClassImportDir","*.cls","cdk",.errors,1)

// Install an instance of a FHIR Service into the current namespace
Do ##class(HS.FHIRServer.Installer).InstallInstance(appKey, strategyClass, metadataConfigKey)

// Set Allow Unauthenticated Access
set cspConfig = ##class(HS.Util.RESTCSPConfig).URLIndexOpen(appKey)
set cspConfig.AllowUnauthenticatedAccess = 1
zw cspConfig.%Save()

// Put server in debug mode
set strategy = ##class(HS.FHIRServer.API.InteractionsStrategy).GetStrategyForEndpoint(appKey)
set config = strategy.GetServiceConfigData()
set config.DebugMode = 4
do strategy.SaveServiceConfigData(config)

halt
EOF
