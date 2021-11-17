#!/bin/sh
echo “Enter the options between [1-5] to execute commands:”
read choice
case "$choice" in
"1") ls ;;
"2") ps ;;
"3") date ;;
"4") id ;;
"5") exit ;;
*) echo “choose option between 1-5”
 break;;
esac
