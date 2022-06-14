#!/bin/sh
i=0
a=0
declare -a arr
declare -a arr1
count=0
while [ $i -le 49 ]
do
a=$( date -d "$(( RANDOM%1+1998 ))-$(( RANDOM%12+1 ))-$(( RANDOM%28+1 ))" +%m )
arr[$i]=$a
i=$(( $i + 1 ))
done
j=0

for (( k=0; k <= 49; k++ ))
do
	for (( $j; $j <= 49; j++ ))
		do
			if [ $i == $j ]
				then
					continue
			fi
			if [ ${arr[$k]} == ${arr[$j]} ]
				then
					count=$(( $count+1 ))
					arr1[$count]=$i
					count=$(( $count+1 ))
					arr1[$count]=$j
			else
				continue
			fi
		done
j=$(( $j + 1 ))
done

for i in "${arr1[@]}"
do
	echo "$i"

done

