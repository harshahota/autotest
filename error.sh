#!/bin/bash

echo "......................................"
echo ".........the error message............"
echo "......................................"
echo "root=harshahota@gmail.com\nmailhub=smtp.gmail.com:587\nAuthUser=jenkinsupdates@gmail.com\nAuthPass=jenkinspassword\nUseTLS=YES\nUseSTARTTLS=YES\nFromLineOverride=YES" >> /etc/ssmtp/ssmtp.conf
zip -r report.zip target/report
echo "Test Cases Failed" | mail -s "Fail Report" harshahota123@gmail.com -A report.zip