#!/bin/sh
basic=0
echo "Please enter basic salary of employee :"
read basic
if [ $basic -st 10000 ]
then
   hra=$((basic * 8))
   hra=$((hra / 100))
   da=$((basic * 10))
   da=$((da / 100)) 
elif [ $basic -gt 10000 ]
then
   hra=$((basic * 16))
   hra=$((hra / 100))
   da=$((basic * 20))
   da=$((da / 100))
else
   hra=$((basic * 24))
   hra=$((hra / 100))
   da=$((basic * 25))
   da=$((da / 100))
fi
grs=$((basic+hra+da))
echo "Your Gross salary is"
echo $grs
