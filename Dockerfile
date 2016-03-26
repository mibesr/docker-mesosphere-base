FROM ubuntu:15.04

RUN echo "deb http://repos.mesosphere.io/ubuntu vivid main" >> /etc/apt/sources.list.d/mesosphere.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF && \
    apt-get update && apt-get -y upgrade && \
    apt-get clean && rm -rf /var/lib/apt/lists/*