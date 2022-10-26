#!bin/bash

echo -n "Installing yum: "
yum install nginx -y &>> $LOGFILE
stat $?

echo -n "Downloading the component: "
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/$COMPONENT/archive/main.zip"
stat $?
systemctl enable nginx
systemctl start nginx 