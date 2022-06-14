#!/bin/bash -X

for(( i=0; i<=9; i++ ))
do
	r=$(( RANDOM%1000+1 ))
	rArr[i]=$r
done

echo "${rArr[0]}"

