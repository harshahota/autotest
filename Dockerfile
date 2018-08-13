FROM webnicer/protractor-headless

RUN google-chrome --version

RUN apt-get update && apt-get -y install libxss1 libappindicator1 libindicator7 libappindicator3-1 lsb-core
RUN curl -L -o google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN dpkg -i ./google-chrome*.deb
RUN apt-get install -yf
RUN apt-get install -y curl git ssmtp sharutils zip default-jre wget 

RUN curl -sL https://deb.nodesource.com/setup | sudo bash - && \
RUN apt-get install -yq nodejs build-essential

RUN npm install -g npm


RUN echo "root=harshahota@gmail.com" >> /etc/ssmtp/ssmtp.conf
RUN echo "# Example for relaying to Gmail servers" >> /etc/ssmtp/ssmtp.conf
RUN echo "mailhub=smtp.gmail.com:587" >> /etc/ssmtp/ssmtp.conf
RUN echo "AuthUser=jenkinsupdates@gmail.com" >> /etc/ssmtp/ssmtp.conf
RUN echo "AuthPass=harshapickle" >> /etc/ssmtp/ssmtp.conf
RUN echo "UseTLS=YES" >> /etc/ssmtp/ssmtp.conf
RUN echo "UseSTARTTLS=YES" >> /etc/ssmtp/ssmtp.conf

RUN git clone https://github.com/harshahota/autotest.git
WORKDIR /autotest
RUN npm install
RUN npm run update-webdriver
RUN npm run test
RUN zip -r report.zip target/report
RUN echo -e "to: receiver@domain.tld\nsubject: test\n"| (cat - && uuencode /report.zip report.zip) | ssmtp harshahota123@gmail.com

