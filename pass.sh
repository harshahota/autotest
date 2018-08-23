#!/bin/bash

echo "......................................"
echo ".........the pass message............"
echo ".........the pass mail $1............"
echo "......................................"
echo "root=harshahota@gmail.com\nmailhub=smtp.gmail.com:587\nAuthUser=jenkinsupdates@gmail.com\nAuthPass=jenkinspassword\nUseTLS=YES\nUseSTARTTLS=YES\nFromLineOverride=YES" >> /etc/ssmtp/ssmtp.conf
zip -r report.zip target/report
echo "Test cases Passed" | mail -s "Pass Report" $1 -A report.zip