#!/bin/bash -x


read number1
read number2

temp_number=$number1
reverse_number=0

function reverse_check()
{
	while (($temp_number>0)) 
	do
		remainder=$(( temp_number%10 ))
		reverse_number=$(( reverse_number*10 + remainder))
		temp_number=$temp_number/10
	done
}


function palindrome_check()
{
	if (( $reverse_number == $number2 ))
	then	
		echo $number1 "and" $number2 "are palindromes"
	else
		echo $number1 "and" $number2 "are NOT palindromes"
	fi
}


reverse_check
palindrome_check