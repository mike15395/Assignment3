#!/bin/bash -x

read nth_harmonic
sum=0
for (( i=1;i<=$nth_harmonic;i++ ))
do
	
	sum=`expr $sum + 10000 / $i `

done

echo "scale=4;$sum/10000" | bc
