#!/bin/bash

echo "......................................"
echo ".........the pass message............"
echo "......................................"
echo "root=harshahota@gmail.com\nmailhub=smtp.gmail.com:587\nAuthUser=jenkinsupdates@gmail.com\nAuthPass=jenkinspassword\nUseTLS=YES\nUseSTARTTLS=YES\nFromLineOverride=YES" >> /etc/ssmtp/ssmtp.conf
zip -r report.zip target/report
echo -e "to: receiver@domain.tld\nsubject: Pass Report\n"| (cat - && uuencode /report.zip report.zip) | ssmtp harshahota123@gmail.com
