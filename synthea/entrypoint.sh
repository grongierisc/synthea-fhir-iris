#!/bin/sh

cd /synthea
if [ ${SYNTHEA_SEED} ]; then
    ./run_synthea -s ${SYNTHEA_SEED} -p ${SYNTHEA_SIZE}
else
    ./run_synthea -p ${SYNTHEA_SIZE}
fi

if [ ${FHIR_URL} ]; then

    start=`date +%s`
    cd /synthea/output/fhir 
    make -j8
    end=`date +%s`

    runtime=$((end-start))
    echo "temps de traitement en secondes "$runtime

fi