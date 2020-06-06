#!/bin/bash -x

echo "Enter your choice"
echo "1.degF to degC"
echo "2.degC to degF"
read choice



function ctof()
{
	degF=$(( $((degC*9/5)) + 32 ))
	echo "Fahrenhit=" $degF
}

function ftoc()
{
	degC=$(( $(( degF-32 )) * 5/9 ))
	echo "Celcius=" $degC

}

case $choice in
	1 )
		read degF
		if (( $degF>=32 && $degF<=212 ))
		then

			ftoc

		else
			echo "Fahrenhit temperature range (32-212)"
		fi
		;;
	2 )
		read degC
		if (($degC >=0 && $degC <=100))
		then

			ctof

		else
			echo "Celcius temperature range (0-100)"
		fi
		;;
	* )
		echo "Wrong choice"
		;;
esac

