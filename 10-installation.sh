#!/bin/bash

USERID=$(id -u)
 
if [ $USERID -eq 0 ]

then 
    echo "Please run the script with root access."
else
    echo "you are super user"
fi

dnf install mysql -y

