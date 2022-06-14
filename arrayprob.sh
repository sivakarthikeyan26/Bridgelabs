#!/bin/bash -X
declare -a arr
declare -a arr2
declare -a arr3
c=0
c1=0
c2=0
flag=1
great=0
prev=0
prev1=0
small=0
temp=0
temp2=0
for (( i=0; i <= 9; i++ ))
do
	a=$(( RANDOM%900+100 ))
	arr[$i]=$a
	echo "${arr[$i]}"
done


for (( j=0; j <= 9; j++ ))
do
	if [ $flag == 1 ]
		then
			great=${arr[$j]}
			(( flag=0 ))
	fi
	if [[ ${arr[$j]} -gt $great ]]
		then
			prev=$great
			great=${arr[$j]}
			continue
	elif [ ${arr[$j]} -gt $prev ]
		then
			prev=${arr[$j]}
	else
		continue
	fi
done
echo "the second largest is $prev"
(( flag=1 ))
for (( j=0; j <= 9; j++ ))
do
        if [ $flag == 1 ]
                then
                        small=${arr[$j]}
                        (( flag=0 ))
        fi
        if [[ ${arr[$j]} -lt $small ]]
                then
                        prev1=$small
                        small=${arr[$j]}
                        continue
        elif [ ${arr[$j]} -lt $prev1 ]
                then
                        prev1=${arr[$j]}
        else
                continue
        fi
done
echo "the second smallest is $prev1"
arr=( $(
    for el in "${arr[@]}"
    do
        echo "$el"
    done | sort) )
echo "2nd gretest number by sorting is ${arr[8]}"
echo "2nd smallest number by sorting is ${arr[1]}"



: '  this is the program for prime factor '

echo "enter the number"
read  n
for (( i=1; i<=$n; i++ ))
do
	if [ `expr $n % $i` == 0 ]
		then
			for (( j=1; j <= $i; j++ ))
				do
					if [ `expr $i % $j` == 0 ]
						then
							c=$(( $c+1 ))
					fi
				done
			if [ $c -lt 3 ]
				then
					arr2[c1]=$i
					c1=$(( $c1+1 ))
			fi
		(( c=0 ))
	fi
done

echo "The prme factors of $n is ${arr2[@]}"


: ' this is the program for repetation of numbers '

for (( i=1; i <= 100; i++ ))
do
	if [ `expr $i % 11` == 0 ]
		then
			temp=`expr $i / 11`
			temp2=`expr $temp \* 10 + $temp`
			arr3[$c2]=$temp2
			c2=$(( $c2 + 1 ))
	fi
done
echo "the nmubers repeated from 0-100 is: ${arr3[@]}"
