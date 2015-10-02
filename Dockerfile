# Jenkins image with docker, nvm and nodejs installed
#
# VERSION      0.1 

FROM jenkins:1.609.3
MAINTAINER eventfully.org

#Needed to get it to work with volumes in Bluemix currently
USER root

#COPY ["docker-entrypoint.sh", "/" ]

COPY ["jessie-backports.list", "/etc/apt/sources.list.d/jessie-backports.list"]

RUN mkdir -pv /var/jenkins_home \
    && chown -R jenkins /var/jenkins_home \
    && mkdir -p /var/lib/apt/lists/partial \
    && apt-get update \
    && apt-get install -y build-essential libssl-dev \
    && wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.27.1/install.sh | NVM_DIR=/usr/local/nvm bash \
    && . ~/.bashrc \
    && nvm install v0.12.7 node \
    && apt-get install -y docker.io \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#ENTRYPOINT ["/docker-entrypoint.sh"]

