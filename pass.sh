#!/bin/bash

echo "......................................"
echo ".........the pass message............"
echo "......................................"
echo -e "to: receiver@domain.tld\nsubject: Pass Report\n"| (cat - && uuencode /autotest/report.zip report.zip) | ssmtp harshahota123@gmail.com
