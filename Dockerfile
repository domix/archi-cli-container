FROM ubuntu:19.10

ARG ARCHI_VERSION
ENV ARCHI_VERSION_ENV=$ARCHI_VERSION

ADD https://www.archimatetool.com/downloads/$ARCHI_VERSION_ENV/Archi-Linux64-$ARCHI_VERSION_ENV.tgz /

RUN tar -xzf /Archi-Linux64-$ARCHI_VERSION_ENV.tgz && rm -rf /Archi-Linux64-$ARCHI_VERSION_ENV.tgz


