#!/bin/bash - X

function roll()
{
a=$(( RANDOM%6+1 ))
echo "$a"
}

declare -A rolls
declare -A counter
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
out=roll
while [[ ${counter[1]} != 10 || ${counter[2]} != 10 || ${counter[3]} != 10 || ${counter[4]} != 10 || ${counter[5]} != 10 || ${counter[6]} != 10 ]]

do

if [ out == 1 ];

then
	rolls[1]="1"
	counter[1] = $(( count1++ ))

elif [ roll == 2 ];
then
	rolls[2]="2"
	 counter[2] = $(( count2++ ))


elif [ roll == 3 ];
then
        rolls[3]="3"
	 counter[3]= $(( count3++ ))

elif [ roll == 4 ];
then
        rolls[4]="4"
	 counter[4]= $(( count4++ ))

elif [ roll == 5 ];
then
        rolls[5]="5"
	 counter[5]= $(( count5++ ))

elif [ roll == 6 ];
then
        rolls[6]="6"
	 counter[6]= $(( count6++ ))

fi

done

echo "${counter[@]}"
