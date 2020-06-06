#!/bin/bash -x

read n

for (( i=1;i<=n;i++ ))
do
	echo 2^$i | bc
done
