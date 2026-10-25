#!/bin/sh
echo -en "what is your name [ `whoami` ] "
read myname
echo is "Your name is : ${myname:=`whoami`}"
echo "after that my name still $myname"