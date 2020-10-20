#! /bin/bash
#Author:PratibhaMastud
#1.Check how many times head or tails win by flipping 10 times.

#variable initialization
times=10
i=0
head=0
tail=0

while [ $i -lt $times ]
do
        flip=$((RANDOM%2))

        if [ $flip -eq 1 ]
        then
                head=$(($head+1))
        else
                tail=$(($tail+1))
        fi

        i=$(($i+1))
done
# we are going to check who is win by comparing the score
if [ $head -gt $tail ]
        then
                echo "Winner is Head with $head Numbers"
        else
                echo "Winner is Tail with $tail Numbers"
fi

