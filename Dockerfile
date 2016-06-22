FROM ubuntu
MAINTAINER David Alvaro <dalvarom@gmail.com>

COPY *.sh /build/

ENV HBASE_VERSION = 1.1.4

RUN /build/prepare-hbase.sh && \
    cd /opt/hbase && /build/build-hbase.sh \
    cd / && /build/cleanup-hbase.sh && rm -rf /build
