#!/bin/bash

THRESHOLD=100
#ALERT_EMAIL="soumyamunni510@gmail.com"
MESSAGE=""


USED=$(free | grep Mem | awk '{print $3}')
TOTAL=$(free | grep Mem | awk '{print $2}')

USAGE=$(( USED * 100 / TOTAL ))
if [ $USAGE -ge $THRESHOLD ]
then
    MESSAGE+="$USED is more than $THRESHOLD, Current usage: $USED \n"
fi


echo -e "Message: $MESSAGE"

if [ -n "$MESSAGE" ]
then
    echo -e "$MESSAGE" | mail -s "Memory Threshold Alert" soumyamunni510@gmail.com
fi