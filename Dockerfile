FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl firefox

# Upgrade NPM to latest (address issue #3)
RUN npm install -g npm

