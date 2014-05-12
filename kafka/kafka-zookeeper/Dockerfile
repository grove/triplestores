FROM ubuntu

MAINTAINER Geir Ove Grønmo <grove@geirove.org>

RUN apt-get update
RUN apt-get install -y --no-install-recommends software-properties-common python-software-properties
RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
RUN apt-get install -y --no-install-recommends oracle-java7-installer

RUN wget -q http://mirror.gopotato.co.uk/apache/kafka/0.8.1.1/kafka_2.8.0-0.8.1.1.tgz -O /tmp/kafka_2.8.0-0.8.1.1.tgz
RUN tar xfz /tmp/kafka_2.8.0-0.8.1.1.tgz -C /opt

ENV KAFKA_HOME /opt/kafka_2.8.0-0.8.1.1
ADD start-zookeeper.sh /usr/bin/start-zookeeper.sh 
CMD start-zookeeper.sh
