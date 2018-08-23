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
                                    fonts-liberation\
                                    libasound2\
                                    xdg-utils\
                                    libxss1\
                                    libappindicator1\
                                    libindicator7\
                                    libappindicator3-1\
                                    lsb-core\
                                    mpack\
                                    mutt\
                                    mailutils


RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && dpkg -i ./google-chrome*.deb

RUN npm install -g npm

RUN npm cache clean --force

ADD . /app
WORKDIR /app
RUN npm install && npm run update-webdriver