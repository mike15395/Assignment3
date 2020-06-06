#!/bin/bash -x
h=0
t=0
while true 
do

	coin=$(($RANDOM%2))

	if [ $coin == 1 ]
	then
		echo "heads"
		((++h))
		echo "no of heads=" $h
	else
		echo "tails"
		((++t))
		echo "no of tails=" $t
	fi

	if (( $h == 11 )) 
	then
		echo "heads win"
		break;
	elif (( $t == 11 ))
	then
		echo "tails win"
		break;
	fi

done


