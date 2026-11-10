#!/bin/sh
. ./address_book.lib
echo "This is  Phanu's address book."
while :
do
    echo "Choose what you want to do."
    echo "s : search for address contain exact text in."
    echo "a : add new address"
    echo "r : remove address"
    echo "e : edit address"
    echo "d : display addresses"
    echo "x : close program"
    echo -n "command: "
    read INPUT

    case $INPUT in
        s)
            search_address
            ;;
        a)
            add_address
            ;;
        r)
            remove_address
            ;;
        e)
            edit_address
            ;;
        d)
            display
            ;;
        x)
            exit
            ;;
        *)
            echo "$INPUT is invalid command, please try again"
    esac
done

