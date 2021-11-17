#!/bin/sh
echo "Enter a Number"
read num
fact=1
for((i=num;i>=1;i--))
{
fact=$((fact*i))
}
echo $fact