#! /bin/bash
#Author:PratibhaMastud
#1.find the Head and Tail score is same the match tied it continue till difference of two is achieved
i=1
head=0
tail=0



while [ $i -le 30 ]
do        
	flip=$((RANDOM%2))
        
	echo "flip=$flip"
	if [ $flip -eq 1 ]
        then
		  
		head=$(($head + 1))
		echo "head=$head"
	else
		tail=$(($tail +1))
		echo "tail=$tail"

	fi

	if [ $head -gt $tail ]
	then	
		                
		diff=$(($head-$tail))
	else
		diff=$(($tail-$head))
	fi

	
	if [ $diff -gt 2 ]
        then
		echo "Difference ($head-$tail)=" $diff
	   	echo "The difference of score is achieved minimum 2 points,Stop the game"
		echo "Succesful Win"
        	i=$(($i-$i))                
		break

	 elif [ $head -eq $tail ]
	 then 
		echo "score ($head = $tail)"
		echo "The Head and Tail score is same the match tied but it continue till difference of two is achieved."
		
         fi	
		     
        i=$(($i+1))
done


