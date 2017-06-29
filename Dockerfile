FROM ubuntu:14.04

MAINTAINER armandomendivil.m@gmail.com

# Cleanup package manager
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN apt-key update \
    apt-get update -qq \
    apt-get upgrade -y --force-yes \
    apt-get install curl screen -y \

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

# Install Node
RUN apt-get install -y nodejs \
    apt-get install -y build-essential software-properties-common python-software-properties

# Copy app to /src
COPY . /src

# Install app and dependencies into src
RUN cd /src; npm install

EXPOSE 3000

CMD cd /src && node ./server.js
