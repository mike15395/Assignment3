#/bin/bash -x

read original_number

function prime_check()
{
	number=$original_number
	for (( i=2;i<$number;i++  ))
	do
		if  (( $(($number%$i)) == 0 ))
		then
			break;
		fi
	done

	if ((  $i==$number  ))
	then
		echo "Prime number"
	else
		echo "Not Prime number"
	fi
}

function reverse_check()
{
	temp_number=$number
	while (($temp_number>0)) 
	do
		remainder=$(( temp_number%10 ))
		reverse_number=$(( reverse_number*10 + remainder))
		temp_number=$temp_number/10
	done

	echo "reverse number is=" $reverse_number
}

function prime_check_reverse()
{
	number=$reverse_number
	for (( i=2;i<$number;i++  ))
	do
		if  (( $(($number%$i)) == 0 ))
		then
			break;
		fi
	done

	if ((  $i == $number  ))
	then
		echo "Reverse number is also prime"
	else
		echo "Reverse number is Not prime"
	fi
}

prime_check
reverse_check
prime_check_reverse