FROM xjodoin/hbase:1.2
MAINTAINER Xavier Jodoin <xavier@jodoin.me>

RUN apt-get update && apt-get install -y supervisor python-pip && pip install supervisor-stdout
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENV PHOENIX_VERSION=4.10.0-HBase-1.2

RUN mkdir /phoenix-setup
WORKDIR /phoenix-setup

ADD install-phoenix.sh /phoenix-setup/install-phoenix.sh
RUN ./install-phoenix.sh

EXPOSE 8765

WORKDIR /opt/hbase/conf
ADD phoenix-changes.sed /opt/hbase/conf/changes.sed
RUN sed -i -f changes.sed  hbase-site.xml && rm changes.sed

CMD ["/usr/bin/supervisord"]
