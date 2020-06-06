#/bin/bash -x

read number

for (( i=2;i<$number;i++  ))
do
	if  (( $(($number%$i)) == 0 ))
	then
		break;

	fi
done

if ((  $i==$number  ))
then
	echo "prime"
else
	echo "Not prime"
fi
