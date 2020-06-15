FROM java:8-jdk-alpine

COPY synthea.properties /

ENV SYNTHEA_SEED=
ENV SYNTHEA_SIZE=10
ENV FHIR_URL=

RUN apk update \
    && apk add git curl make unzip libstdc++ \
    && git clone https://github.com/synthetichealth/synthea.git \
    && mv synthea.properties /synthea/src/main/resources/synthea.properties \
    && cd synthea \
    && ./gradlew build -x test \
    && cd / 

COPY entrypoint.sh /
COPY output/fhir/makefile /synthea/output/fhir/makefile
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
