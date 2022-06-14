#!/bin/bash

declare -A rolls
declare -A counter
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
great=0
small=0
flag=1
key=" "
while [[ ${counter[one]} != 10 && ${counter[two]} != 10 && ${counter[three]} != 10 &&  ${counter[four]} != 10 && ${counter[five]} != 10 && ${counter[six]} != 10 ]]
do

a=$(( RANDOM%6+1 ))

if [ $a == 1 ]

then
        rolls[1]="1"
	(( count1++ ))
        counter[one]=$count1

elif [ $a == 2 ]
then
        rolls[2]="2"
	(( count2++ ))
         counter[two]=$count2


elif [ $a == 3 ]
then
        rolls[3]="3"
	(( count3++ ))
         counter[three]=$count3

elif [ $a == 5 ]
then
        rolls[5]="5"
	(( count5++ ))
         counter[five]=$count5
elif [ $a == 6 ]
then
        rolls[6]="6"
	(( count6++ ))
         counter[six]=$count6
else

	rolls[4]="4"
	(( count4++ ))
	counter[four]=$count4
fi

done

echo "${!counter[@]}"
echo "${counter[@]}"
echo "${counter[1]}"
for i in "${!counter[@]}"
do
	if [ $flag == 1 ]
		then
			small=${counter[$i]}
			(( flag=0 ))
	fi
	if [[ ${counter[$i]} -lt $small ]]
			then
				small=${counter[$i]}
				key="$i"
	else
		continue
	fi
done
echo "the number $key occured least times"
for i in "${!counter[@]}"
do
        if [ $flag == 1 ]
                then
                        great=${counter[$i]}
                        (( flag=0 ))
        fi
        if [[ ${counter[$i]} -gt $great ]]
                        then
                                great=${counter[$i]}
                                key="$i"
        else
                continue
        fi
done
echo "the number $key occured many times"
