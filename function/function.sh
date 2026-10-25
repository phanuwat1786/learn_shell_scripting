#!/bin/sh
# this is simple function.

add_a_user()
{
    USER=$1
    PASSWORD=$2
    shift; shift; #shift first 2 used parameter
    # the rest is now comment
    COMMENT=$@
    echo "Adding user $USER ..."
    echo useradd -c "\"$COMMENT\"" $USER
    echo passwd $USER $PASSWORD
    echo "Add user $USER ($COMMENT) with pass $PASSWORD"
}

# main script

echo "start of the script ..."
add_a_user bob letmein Bob Holness the presenter
add_a_user fred baspassword Fred Durst the singer
add_a_user bilko worsepassword Sgt. Bilko the role model
echo "End of the Script..."