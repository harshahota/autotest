FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl firefox npm git

RUN npm install -g npm

RUN git clone https://github.com/harshahota/autotest.git
RUN cd autotest
RUN npm install
RUN npm run updatewebdriver
RUN npm run test