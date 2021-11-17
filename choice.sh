#!/bin/sh

echo "Enter number:"
read choice
case "$choice" in
"1") echo "The first day is MONDAY";;
"2") echo "The second day is TUESDAY";;
"3") echo "The third day is WEDNESDAY";;
"4") echo "The fourth day is THURSDAY";;
"5") echo "The fifth day is FRIDAY";;
"6") echo "The sixth day is SATURDAY";;
"7") echo "The seventh day is SUNDAY";;
*) echo “choose a number between 1-7”
break;;
esac
