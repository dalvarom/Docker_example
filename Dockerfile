FROM ubuntu
MAINTAINER David Alvaro <dalvarom@gmail.com>

RUN echo "1" > 1

COPY *.sh /build/

RUN echo "2" > 2

ENV HBASE_VERSION = 1.1.4

RUN echo "3" > 3

RUN /build/prepare-hbase.sh && \
    cd /opt/hbase && /build/build-hbase.sh \
    cd / && /build/cleanup-hbase.sh && rm -rf /build
