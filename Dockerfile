FROM ubuntu:19.10

ENV ARCHI_VERSION 4.4.0

ADD https://www.archimatetool.com/downloads/$ARCHI_VERSION/Archi-Linux64-$ARCHI_VERSION.tgz /

RUN tar -xzf /Archi-Linux64-$ARCHI_VERSION.tgz && rm -rf /Archi-Linux64-$ARCHI_VERSION.tgz


