FROM ubuntu

RUN apt-get update && \\
    apt-get install -y curl

# Upgrade NPM to latest (address issue #3)
RUN npm install -g npm

