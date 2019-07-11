
ARCHI_VERSION=4.4.0

docker build --build-arg ARCHI_VERSION=${ARCHI_VERSION} -t domix/archi-cli:$ARCHI_VERSION .