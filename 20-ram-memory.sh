#!/bin/bash

THRESHOLD=80
MESSAGE=""

USED=$(free | awk '/Mem:/ {print $3}')
TOTAL=$(free | awk '/Mem:/ {print $2}')

USAGE=$(( USED * 100 / TOTAL ))

echo -e "Message: $MESSAGE Current RAM Usage: $((USED/1024)) MB"

if [ $USED -ge $THRESHOLD ]
then
    MESSAGE+="Current RAM Usage $((USED/1024)) MB is more than $THRESHOLD"
fi

echo "$MESSAGE" | mail -s "Current RAM Usage" soumyamunni510@gmail.com
