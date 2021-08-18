#!/bin/bash

# start apache
echo "Starting httpd"
#/usr/sbin/httpd -D FOREGROUND
openrc default
echo "Done httpd"
tail -f /dev/null
