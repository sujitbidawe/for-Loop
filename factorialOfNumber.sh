#! /bin/bash

read -p "enter a number to find its factorial: " number

factorial=1

for (( start=1; start<=$number; start++ ))
do
#	square=`echo "$start*$start" | bc`
	factorial=$(( $factorial*$start ))
done

echo $ factorial of $number is $factorial
