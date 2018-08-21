#!/bin/bash



count=99
if [ $(./node_modules/protractor/bin/protractor e2e/conf.js)  == *true ]
then
  echo "Count is 100"
else
  echo "Count is not 100"
fi

echo "the temp is"
echo temp