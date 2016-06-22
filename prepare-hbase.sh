#!/bin/sh -x

RUN mkdir /traza/1

. /build/config-hbase.sh

apt-get update -y

RUN mkdir /traza/2
apt-get install $minimal_apt_get_args $HBASE_BUILD_PACKAGES

RUN mkdir /traza/3
cd /opt
RUN mkdir /traza/4
curl -SL http://archive.apache.org/dist/hbase/$HBASE_VERSION/hbase-$HBASE_VERSION-bin.tar.gz | tar -x -z && mv hbase-${HBASE_VERSION} hbase
RUN mkdir /traza/5
RUN echo "1" > 1