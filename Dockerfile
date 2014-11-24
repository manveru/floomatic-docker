FROM ubuntu:latest
MAINTAINER mf@dotabuff.com

RUN apt-get update && \
    apt-get install -y nodejs npm
RUN npm install floomatic
WORKDIR /share
CMD ["floomatic", "--read-only"]
