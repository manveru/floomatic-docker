FROM ubuntu:latest
MAINTAINER mf@dotabuff.com

RUN mkdir /share
RUN apt-get update && \
    apt-get install -y nodejs nodejs-legacy npm libqt4-dev pkg-config && \
    curl -sSL https://get.docker.com/ubuntu/ && \
    npm install floomatic
WORKDIR /share
CMD ["/node_modules/.bin/floomatic", "--read-only"]
