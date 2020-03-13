#! /bin/bash 

# run script as ==> $ ./primeCheck.sh <numeric_input>

start=$1
end=$2


for(( integer=$start; integer<=$end; integer++ ))
do
	divisibleByNumbers=0
	for (( int=2; int<=$(( $integer/2 )); int++ ))
	do
	
		if [[ $integer%$int -eq 0 ]]
		then
				divisibleByNumbers=$(( $divisibleByNumbers+1 ));
		fi

	done

	if [[ $divisibleByNumbers -eq 0 ]]
	then
			echo $integer is a prime number
	else
			echo $integer is not a prime number
	fi
done
