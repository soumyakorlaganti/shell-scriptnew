#!/bin/bash

set -e 

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Please run the script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysql -y
dnf install ghjhjit -y

echo "is script proceeding?"

