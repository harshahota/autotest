FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl firefox npm

RUN npm install -g npm
RUN ls
RUN npm install
RUN npm run updatewebdriver
RUN npm run test