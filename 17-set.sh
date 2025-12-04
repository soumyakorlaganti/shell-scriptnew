#!/bin/bash

set -e 

handle_error(){
    echo "error occured at $1: $2"
}

trap 'handle_error ${LINENO} "${BASH_COMMAND}"' ERR

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "Please run the script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mydbdsql -y
dnf install git -y

echo "is script proceeding?"

