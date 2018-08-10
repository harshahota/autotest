FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl firefox npm git ssmtp sharutils zip default-jre wget 
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
RUN sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install google-chrome-stable

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

