#! /bin/bash
#Author:PratibhaMastud
#1.Check the winner with 21 score by flipping the coin.

i=1
head=0
tail=0
var1=1
var2=0

flip=$((RANDOM%2))
while [ $i -gt 0 ]
do        
        
	if [ $flip -eq $var1 ]
        then
		# we are going to check head is score is egual to given score 
		  head=$(($head + 1))

		if [ $head -eq 21 ]
                then
                        echo "Winner is Head with $head score"
                        break
			
		fi

	elif [ $flip -eq $var2 ]
	then	
		                
		tail=$(($tail+1))
		
		if [ $tail -eq 21 ]
                then
			echo "Winner is Tail with $tail score"
                        break
                fi	
		      
		
        fi

        i=$(($i+1))
done


