FROM java:8-jdk-alpine

COPY entrypoint.sh /
COPY synthea.properties /

ENV SYNTHEA_SEED=
ENV SYNTHEA_SIZE=10
ENV FHIR_URL=

RUN apk update \
    && apk add git curl unzip libstdc++ go \
    && git clone https://github.com/synthetichealth/synthea.git \
    && mv synthea.properties /synthea/src/main/resources/synthea.properties \
    && cd synthea \
    && ./gradlew build -x test \
    && cd / \
    && git clone https://github.com/synthetichealth/uploader \
    && cd uploader/vendor \
    && ln -s . src \
    && chmod +x /entrypoint.sh

RUN cd /uploader \
    && export GOPATH=/uploader/vendor \
    && go build

CMD ["/entrypoint.sh"]
