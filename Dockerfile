FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl firefox npm git

RUN npm install -g npm

RUN mkdir autotest
RUN cd autotest
RUN git clone https://github.com/harshahota/autotest.git
RUN ls
