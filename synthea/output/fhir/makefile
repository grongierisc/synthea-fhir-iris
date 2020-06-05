SRC= $(wildcard *.json)
DONE= $(SRC:.json=.done)

all : done

done : $(DONE)
	rm -rf *.done

%.done : %.json
	curl -i -H "Content-Type:application/fhir+json" -X POST --data @"$<" ${FHIR_URL} > "$@"