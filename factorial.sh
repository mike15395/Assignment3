#!/bin/bash -x

read number

function factorial()
{
	fact=1
	while (( $number !=0 ))
	do
		fact=$(($fact*$number))
		((number--))
	done
	echo $fact
}

factorial $number
