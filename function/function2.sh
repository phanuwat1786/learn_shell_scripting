#!/bin/sh
 myfunc()
 {
    echo "i was called as : $@"
    x=2
 }


 # main 

echo "Script was called as : $@"
x=1
echo "x is $x"
myfunc 1 2 3
echo "x is $x"