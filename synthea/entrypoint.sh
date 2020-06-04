#!/bin/sh

cd /synthea
if [ ${SYNTHEA_SEED} ]; then
    ./run_synthea -s ${SYNTHEA_SEED} -p ${SYNTHEA_SIZE}
else
    ./run_synthea -p ${SYNTHEA_SIZE}
fi

if [ ${FHIR_URL} ]; then

    for file in /synthea/output/fhir/*.json
    do
        curl -i -H "Content-Type:application/fhir+json" -X POST --data @$file ${FHIR_URL}
    done; # file
    
fi