#!/bin/bash -x

read number

for (( factor=2;$number>1;factor++ ))
do
	while (( $(($number%$factor)) == 0 ))
	do
		echo $factor
		number=$(($number/$factor))
	done
done
