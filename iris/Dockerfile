ARG IMAGE=store/intersystems/irishealth-aa-community:2020.3.0AA.331.0

FROM $IMAGE
LABEL maintainer="Guillaume Rongier <guillaume.rongier@intersystems.com>"

COPY install.sh install.sh
COPY src src

RUN iris start $ISC_PACKAGE_INSTANCENAME EmergencyId=sys,sys && \
 sh install.sh $ISC_PACKAGE_INSTANCENAME && \
 /bin/echo -e "sys\nsys\n" | iris stop $ISC_PACKAGE_INSTANCENAME quietly 

