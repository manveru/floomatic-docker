SOURCE ubuntu:latest

RUN apt-get update && \
    apt-get install -y nodejs npm
RUN npm install floomatic
WORKDIR /share
CMD ["floomatic", "--read-only"]
