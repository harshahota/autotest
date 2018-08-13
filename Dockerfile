FROM webnicer/protractor-headless

RUN apt-get update
RUN apt-get install -y npm ssmtp zip

RUN npm install -g npm

RUN ls

RUN echo "root=harshahota@gmail.com" >> /etc/ssmtp/ssmtp.conf
RUN echo "# Example for relaying to Gmail servers" >> /etc/ssmtp/ssmtp.conf
RUN echo "mailhub=smtp.gmail.com:587" >> /etc/ssmtp/ssmtp.conf
RUN echo "AuthUser=jenkinsupdates@gmail.com" >> /etc/ssmtp/ssmtp.conf
RUN echo "AuthPass=harshapickle" >> /etc/ssmtp/ssmtp.conf
RUN echo "UseTLS=YES" >> /etc/ssmtp/ssmtp.conf
RUN echo "UseSTARTTLS=YES" >> /etc/ssmtp/ssmtp.conf

RUN mkdir report
RUN zip -r report.zip report
RUN echo -e "to: receiver@domain.tld\nsubject: test\n"| (cat - && uuencode /report.zip report.zip) | ssmtp harshahota123@gmail.com

