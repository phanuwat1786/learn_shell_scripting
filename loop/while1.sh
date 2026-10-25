#!/bin/sh
# INPUT_STRING=hello
echo $INPUT_STRING
while [ "$INPUT_STRING" != "bye" ]
do 
    echo "Please type something in (bye to quit)"
    read INPUT_STRING
    echo "you typed $INPUT_STRING"
done