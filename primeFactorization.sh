#! /bin/bash -x

read -p "enter a number to find its prime factors: " number

for (( divisor=2; divisor<=number; divisor++ ))
do
		for(( ; $((number%divisor))==0; ))
		do
				echo -n "$divisor "
				number=$((number/divisor))
		done
done
