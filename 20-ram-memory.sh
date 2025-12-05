#!/bin/bash

THRESHOLD=100
ALERT_EMAIL="soumyamunni510@gmail.com"
MESSAGE=" "

USED=$(free | grep Mem | awk '{print $3}')
TOTAL=$(free | grep Mem | aws '{print $2}')

USAGE=$((USED*100/TOTAL))

echo  "Current RAM Usage: $USAGE"
if [ $USAGE -ge $THRESHOLD ]
then
    MESSAGE+="$USAGE is more than $THRESHOLD, Current usage: $USED \n"
fi


echo -e "Message: $MESSAGE"

echo "MESSAGE" | mail -s "Memory Usage Alert" $ALERT_EMAIL