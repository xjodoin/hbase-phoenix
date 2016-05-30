#!/bin/bash

wget http://apache.mirror.iweb.ca/phoenix/phoenix-$PHOENIX_VERSION/bin/phoenix-$PHOENIX_VERSION-bin.tar.gz

tar -xzf phoenix-$PHOENIX_VERSION-bin.tar.gz
mv phoenix-$PHOENIX_VERSION-bin /opt/
rm -f phoenix-$PHOENIX_VERSION-bin.tar.gz
ln -s /opt/phoenix-$PHOENIX_VERSION-bin /opt/phoenix

cp /opt/phoenix/phoenix-server-$PHOENIX_VERSION.jar /opt/hbase/lib/
cp /opt/phoenix/phoenix-core-$PHOENIX_VERSION.jar /opt/hbase/lib/
