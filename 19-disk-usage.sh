#!/bin/bash

#Disk Usage of xfs filesystem
DISK_USAGE=$(df -hT | grep xfs)

# Disk usage threshold 
DISK_THRESHOLD=6  # Set to 75% in production

# Initialize HTML-formatted message
MESSAGE=""

# Loop through each disk entry
while IFS= read -r line
do
    # Extract usage percentage and folder name
    USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print $NF}')
    # Check against threshold
    if [ $USAGE -ge $DISK_THRESHOLD ]
    then
        MESSAGE+="$FOLDER is more than $DISK_THRESHOLD, Current usage: $USAGE \n"
    fi 

done <<< $DISK_USAGE

echo -e "Message: $MESSAGE"
#Sending Alert Mail
echo "$MESSAGE" | mail -s "Disk Usage Alert" soumyamunni510@gmail.com

# echo "body" | mail -s "subject" to-address


#qkbnmsgfhvujhlxt
