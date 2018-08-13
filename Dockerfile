FROM ubuntu
RUN apt-get update && apt-get install -y    curl \
                                    git \
                                    ssmtp \
                                    sharutils \
                                    zip \
                                    default-jre \
                                    wget \
                                    nodejs \
                                    npm \
                                    firefox\
                                    fonts-liberation\
                                    libasound2\
                                    xdg-utils\
                                    libxss1\
                                    libappindicator1\
                                    libindicator7\
                                    libappindicator3-1\
                                    lsb-core


RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && dpkg -i ./google-chrome*.deb

RUN npm install -g npm

RUN echo "root=harshahota@gmail.com\n# Example for relaying to Gmail servers\nAuthUser=jenkinsupdates@gmail.com\nAuthPass=harshapickle\nUseTLS=YES\nUseSTARTTLS=YES" >> /etc/ssmtp/ssmtp.conf

RUN git clone https://github.com/harshahota/autotest.git
WORKDIR /autotest
RUN cat package.json
RUN ls
RUN npm cache clean --force
RUN npm install
RUN npm run update-webdriver
RUN npm run test

RUN zip -r report.zip target/report
RUN echo -e "to: receiver@domain.tld\nsubject: test\n"| (cat - && uuencode /target/report.zip report.zip) | ssmtp harshahota123@gmail.com

