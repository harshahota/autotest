FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl firefox
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
RUN exec bash
RUN nvm install node

RUN npm install -g npm
RUN npm install
RUN npm run updatewebdriver
RUN npm run test