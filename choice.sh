#!/bin/sh
echo “Enter the options between [1-5] to execute commands:”
read choice
case "$choice" in
"1") echo "Apple pie is quite tasty." ;;
    
"2") ps ;;
"3") echo "I like banana nut bread." ;;
"4") echo "New Zealand is famous for kiwi ;;
"5") exit ;;
*) echo “choose option between 1-5”
 break;;
esac