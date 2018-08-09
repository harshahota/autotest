FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl firefox npm

RUN npm install -g npm
RUN cd autotest
RUN npm install
RUN npm run updatewebdriver
RUN npm run test