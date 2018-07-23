FROM ubuntu:16.04

RUN apt-get update && \
  apt-get install -y --no-install-recommends locales && \
  locale-gen en_US.UTF-8 && \
  apt-get dist-upgrade -y && \
  apt-get --purge remove openjdk* && \
  echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections && \
  echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list && \
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886 && \
  apt-get update && \
  apt-get install -y --no-install-recommends oracle-java8-installer oracle-java8-set-default && \
  apt-get clean all

RUN apt-get install -y oracle-java8-set-default

COPY /liferay-dxp-7.1.10-ga1/ /usr/local/liferay/

WORKDIR /usr/local/liferay/tomcat/bin/

CMD ["./catalina.sh", "run"]
