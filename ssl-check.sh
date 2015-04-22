#!/bin/bash
#This is a wrapper for ssl-check-cert script in this directory
#Use this as follows: ./ssl-check.sh <url> <port>
#The script will print the amount of days left until cert expiration
./ssl-cert-check -s $1 -p $2 | tail -n 1 | awk 'NF>1{print $NF}'
