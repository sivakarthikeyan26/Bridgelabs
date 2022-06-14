#!/bin/bash -X
echo "powers of 2 till 256 is:"
a=0
a1=0
c=1
tc=0
hc=0
while [ $a -lt 256 ]
do
	a=$(( 2**$c ))
	c=$(( $c + 1 ))
	echo "$a"
done

: ' this is coin flip problem '

echo " "
echo "Coin flip problem"

while [[ $tc != 11 && $hc != 11 ]]
do
	a=$(( RANDOM%2+1 ))
	if [ $a == 1 ]
		then
			hc=$(( $hc + 1 ))
	elif [ $a == 2 ]
		then
			tc=$(( $tc +1 ))
	else
		continue
	fi
done

if [ $hc == 11 ]
	then
		echo "head wins"
elif [ $tc == 11 ]
	then
		echo "tail wins"
else
	echo "invalid"
fi

