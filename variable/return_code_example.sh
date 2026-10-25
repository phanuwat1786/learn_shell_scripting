#!/bin/sh

adduser()
{
    USER=$1
    PASSWORD=$2
    shift; shift;
    COMMENT=$@
    useradd -c "$COMMENT" $USER
    if [ "$?" -ne "0" ]; then
        echo "Useradd failed"
        return 1
    fi
    passwd $USER $PASSWORD
    if [ "$?" -ne "0" ]; then
        echo "passwd failed"
        return 2
    fi
    echo "Add user $USER ($COMMENT) with password $PASSWORD"
}

# main

adduser bob maley bob holness from blockbusters
ADDUSER_RETURN_CODE=$?
if [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
    echo "Something went wrong with user add"
elif [ "$ADDUSER_RETURN_CODE" -eq "1" ]; then
    echo "something wrong with passwd"
else
    echo "bob meley is added into the system"
fi