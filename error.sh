#!/bin/bash

echo "......................................"
echo ".........the error message............"
echo "......................................"
echo -e "to: receiver@domain.tld\nsubject: Failed Report\n"| (cat - && uuencode /autotest/report.zip report.zip) | ssmtp harshahota123@gmail.com