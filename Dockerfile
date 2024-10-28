FROM openjdk:24-slim

LABEL org.opencontainers.image.maintainer="ChasenLbas <chasen.space@gmail.com>"
LABEL org.opencontainers.image.title="Interactive Brokers Client Portal Docker Image"
LABEL org.opencontainers.image.description="Interactive Brokers Client Portal Docker Image"


ARG DOWNLAOD=https://download2.interactivebrokers.com/portal/
ARG FILE=clientportal.gw.zip

ADD ${DOWNLAOD}${FILE} /clientportal.zip

ENV CLIENT_PORTAL /clientportal
COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR ${CLIENT_PORTAL}

RUN apt-get update && apt-get install -y \
    unzip \
    && unzip /clientportal.zip -d ${CLIENT_PORTAL} \
    && rm -rf /clientportal.zip \
    && rm -rf /var/lib/apt/lists/*

CMD ["/docker-entrypoint.sh"]
