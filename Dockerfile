run mkdir "/tmp/1"
RUN echo "1" > /tmp/1/1.txt

COPY *.sh /build/

RUN echo "2" > 2

ENV HBASE_VERSION = 1.1.4

RUN echo "3" > 3

RUN /build/prepare-hbase.sh && \
    cd /opt/hbase && /build/build-hbase.sh \
    cd / && /build/cleanup-hbase.sh && rm -rf /build
