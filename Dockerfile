FROM ubuntu:19.10

ARG ARCHI_VERSION
ENV ARCHI_VERSION_ENV=$ARCHI_VERSION

ADD https://www.archimatetool.com/downloads/$ARCHI_VERSION_ENV/Archi-Linux64-$ARCHI_VERSION_ENV.tgz /

RUN apt-get update -y && apt-get install libgtk-3-dev xvfb -y

RUN tar -xzf /Archi-Linux64-$ARCHI_VERSION_ENV.tgz && rm -rf /Archi-Linux64-$ARCHI_VERSION_ENV.tgz

COPY entrypoint.sh /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]

CMD ["-h"]


#--loadModel "\path\mymodel.archimate" --csv.export "\path\output"


#-v nginx-vol:/usr/share/nginx/html

# docker run --rm -it -v demo:/models domix/archi-cli:4.4.0 --loadModel "/models/demo.archimate" --csv.export "/models/output"