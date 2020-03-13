#! /bin/bash

givenPower=$1
base=2

for (( power=1; power<=$givenPower; power++ ))
do
	echo "$base^$power" | bc
done
