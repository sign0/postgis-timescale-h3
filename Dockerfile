### Version 1.2.1
#FROM timescale/timescaledb-postgis:latest-pg11

### Version 1.4.1
FROM timescale/timescaledb-postgis:1.4.1-pg11

MAINTAINER sign0 <asignori@student.42.fr>

RUN apk add --update \
    git \
    gcc \
    make \
    cmake \
    py-pip \
    musl-dev \
    && pip install pgxnclient \
    && rm -rf /var/cache/apk/*

RUN pgxn install h3

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-extensions.sh /docker-entrypoint-initdb.d/extensions.sh