#!/bin/bash -x

start_money=100
goal=200
bet=1
win=0
loss=0
games=0

while true 
do
	#statements

	if (( (($RANDOM%2)) == 1 ))
	then
		start_money=$(( start_money + bet ))
		(( win++ ))
	else
		start_money=$(( start_money - bet))
		(( loss++ ))
	fi

	((games++))

	if (( $start_money == $goal || $start_money == 0)) 
	then
		echo "wins="$win "loss="$loss "money left="$start_money "gamesplayed="$games
		break;
	fi

done