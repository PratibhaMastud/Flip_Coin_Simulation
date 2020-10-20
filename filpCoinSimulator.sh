#! /bin/bash
#Author:PratibhaMastud
#2.Display Heads or Tails as winner by Flipping a Coin

head=1
# We use RANDOM number for flipping coin
flip=$((RANDOM%2))

#Now we check the winner head or tail
if [ $head -eq 1 ]
then
	echo "The Winner is Head "
else
                echo "The Winner is Tail "
fi
