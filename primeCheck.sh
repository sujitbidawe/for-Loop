#! /bin/bash -x

# run script as ==> $ ./primeCheck.sh <numeric_input>

number=$1
divisibleByNumbers=0

for (( int=2; int<=$(( $number/2 )); int++ ))
do

	if [[ $number%$int -eq 0 ]]
	then
			divisibleByNumbers=$(( $divisibleByNumbers+1 ));
	fi

done

if [[ $divisibleByNumbers -eq 0 ]]
then
		echo $number is a prime number
else
		echo $number is not a prime number
fi
