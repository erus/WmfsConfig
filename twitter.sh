#!/bin/dash
curl -u user:pass -d status="$*" -d source="cURL" http://twitter.com/statuses/update.xml > /dev/null 2>&1 #yup, using a password in the curl command sucks, but i'm the only one using my computer, and i'm not giving too much importance to my twitter account :Ð
