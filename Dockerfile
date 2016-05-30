FROM xjodoin/hbase:1.1
MAINTAINER Xavier Jodoin <xavier@jodoin.me>

ENV PHOENIX_VERSION=4.7.0-HBase-1.1

RUN mkdir /phoenix-setup
WORKDIR /phoenix-setup

ADD install-phoenix.sh /phoenix-setup/install-phoenix.sh
RUN ./install-phoenix.sh

CMD /opt/hbase/bin/start-pseudo-distributed.sh
