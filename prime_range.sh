#!/bin/bash -x

read start
read end


for (( i=$start;i<$end;i++ ))
do
	for ((j=2;j<i;j++))
	do
		if [ $(($i%$j)) -eq 0 ]
		then
			break;
		fi
	done
		if [ $i -eq $j ]
		then
			echo $i
		fi

done

