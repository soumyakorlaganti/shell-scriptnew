# #!/bin/bash

# THRESHOLD=100
# #ALERT_EMAIL="soumyamunni510@gmail.com"
# MESSAGE=""


# USED=$(free | grep Mem | awk '{print $3}')
# TOTAL=$(free | grep Mem | awk '{print $2}')

# USAGE=$(( USED * 100 / TOTAL ))

# echo "Current RAM Usage: $USAGE%"

# if [ $USAGE -ge $THRESHOLD ]
# then
#     MESSAGE+="$USAGE is more than $THRESHOLD, Current usage: $USAGE \n"
# fi


# echo -e "Message: $MESSAGE"


# echo -e "$MESSAGE" | mail -s "Memory Threshold Alert" soumyamunni510@gmail.com

#!/bin/bash

THRESHOLD=80
MESSAGE=""

USED=$(free | awk '/Mem:/ {print $3}')
TOTAL=$(free | awk '/Mem:/ {print $2}')

USAGE=$(( USED * 100 / TOTAL ))

echo -e "Message: $MESSAGE"
echo  -e "Current RAM Usage: $USAGE%"

# if [ $USAGE -ge $THRESHOLD ]; then
#     MESSAGE+="RAM usage alert!\n"
#     MESSAGE+="Current Usage : $USAGE% \n"
#     MESSAGE+="Used Memory   : $((USED/1024)) MB\n"
#     MESSAGE+="Total Memory  : $((TOTAL/1024)) MB\n"
#     MESSAGE+="Threshold     : $THRESHOLD% \n"
# fi


# if [ -n "$MESSAGE" ]; then
#     echo -e "Message: $MESSAGE"
#     echo "$MESSAGE" | mail -s "Memory Threshold Alert" soumyamunni510@gmail.com
# fi


# echo -e "$MESSAGE" | mail -s "Memory Threshold Alert" soumyamunni510@gmail.com



echo "$MESSAGE" | mail -s "Memory Threshold Alert" soumyamunni510@gmail.com
