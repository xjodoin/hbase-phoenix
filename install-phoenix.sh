#!/bin/bash

wget http://apache.mirror.iweb.ca/phoenix/phoenix-$PHOENIX_VERSION/bin/phoenix-$PHOENIX_VERSION-bin.tar.gz

tar -xzf phoenix-$PHOENIX_VERSION-bin.tar.gz
mv phoenix-$PHOENIX_VERSION-bin /opt/
rm -f phoenix-$PHOENIX_VERSION-bin.tar.gz
ln -s /opt/phoenix-$PHOENIX_VERSION-bin /opt/phoenix

cp /opt/phoenix/phoenix-$PHOENIX_VERSION-server.jar /opt/hbase/lib/
