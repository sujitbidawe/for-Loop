#! /bin/bash -x

term=$1
harmonicNumber=0;
#numerator=1
for (( denominator=1; denominator<=$term; denominator++ ))
do
	nthTerm=`echo "scale=4; 1/$denominator" | bc `
	harmonicNumber=`echo "scale=4; $harmonicNumber+$nthTerm" | bc`
done
echo $harmonicNumber
