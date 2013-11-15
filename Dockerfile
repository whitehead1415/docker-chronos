# DOCKER-VERSION 0.7

FROM whitehead/mesos:0.14.2

MAINTAINER Michael Whitehead <whitehead1415@gmail.com>

RUN apt-get install -y -q wget curl

RUN wget -q -O /opt/zookeeper-3.4.5.tar.gz http://apache.mirrors.pair.com/zookeeper/zookeeper-3.4.5/zookeeper-3.4.5.tar.gz
RUN tar -xzf /opt/zookeeper-3.4.5.tar.gz -C /opt
RUN cp /opt/zookeeper-3.4.5/conf/zoo_sample.cfg /opt/zookeeper-3.4.5/conf/zoo.cfg

RUN curl -sSfL http://downloads.mesosphere.io/chronos/chronos-2.0.1_mesos-0.14.0-rc4.tgz --output chronos.tgz
RUN tar xzf chronos.tgz

ADD ./run /usr/bin/run

EXPOSE 2181 2888 3888 5050 8080

CMD ["run"]
