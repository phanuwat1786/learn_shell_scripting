#!/bin/sh
echo -en "what is youe name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
    myname=`whoami`
fi
echo "Your name is : $myname"