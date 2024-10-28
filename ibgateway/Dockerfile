#FROM openjdk:24-slim
FROM debian:12-slim

LABEL org.opencontainers.image.maintainer="ChasenLbas <chasen.space@gmail.com>"
LABEL org.opencontainers.image.title="Interactive Brokers Gateway Docker Image"
LABEL org.opencontainers.image.description="Interactive Brokers Brokers Gateway Docker Image"

ARG VERSION=10.30.1o

# latest stable
ARG STAGE=stable
ARG GATEEWAY_FILE=/ibgateway.sh
ARG WORKDIR=/ibgateway
ARG URL=https://download2.interactivebrokers.com/installers/ibgateway/${STAGE}-standalone/ibgateway-${STAGE}-standalone-linux-x64.sh

ADD ${URL} ${GATEEWAY_FILE}

WORKDIR ${WORKDIR}

RUN chmod +x ${GATEEWAY_FILE} && \
    # input install dir / confirm dir / not run
    # example: /ibgateway / n / n
    echo "${WORKDIR}\ny\nn\n" | bash ${GATEEWAY_FILE} && \
    rm ${GATEEWAY_FILE}
