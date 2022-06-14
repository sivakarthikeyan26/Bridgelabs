#!/bin/bash -X

echo "Use Random Function (( RANDOM )) to get Single Digit"

a=$(( RANDOM%10+1 ))
echo "$a"
echo " "

echo "Use Random to get Dice Number between 1 to 6"
	a=$(( RANDOM%6+1 ))
	echo "$a"
echo " "

echo "Write a program that reads 5 Random 2 Digit values , then find theirsum and the average"
temp=0
for (( i=1; i <= 5; i++ ))
do
	a=$(( RANDOM%10+1 ))
	temp=$(( $temp + $a ))
done
avg=`expr $temp / 5`
echo "the sum is $temp and the avg is $avg"
echo " "

echo "Unit Conversion"

a=12
b=42
c=$(( $b / $a ))
echo "the feet conversion is $c"

echo " "

l=60
b=40

area=$(( $l * $b ))

total=$(( $area * 25 / 43560 ))


echo "the area of 25 such plots in acres is $total"

echo " "

echo "leap year"
echo -n "Enter a year:"
read year_checker
if [ `expr $year_checker % 4` -eq 0 ]
then
	echo "$year_checker is a leap year"
else
	echo "$year_checker is not a leap year"
fi

echo " "

echo "coin flip"
a=$(( RANDOM%2+1 ))
a=$(( $n % 10 ))
if [ $a == 1 ]
then
	echo "it is heads"
else
	echo "it is tails"
a=$(( $n % 10 ))
fi

echo " "

echo "Read a single digit number and write the number in word"
read n
case $n in
	1 )echo "one"
		;;
	2 )echo "two"
                ;;
	3 )echo "three"
                ;;
	4) echo "four"
                ;;
	5)echo "five"
                ;;
	6)echo "six"
                ;;
	7)
	echo "seven"
               ;;
	8)echo "eight"
                ;;
	9)echo "nine"
                ;;
	*)echo "enter single digit number"
		;;
esac

echo " "

echo "Read a Number and Display the week day (Sunday, Monday,...)"
read n
case $n in
        1 )echo "sunday"
                ;;
        2 )echo "monday"
                ;;
        3 )echo "tuesday"
                ;;
        4) echo "wednesday"
                ;;
        5)echo "thursday"
                ;;
        6)echo "friday"
                ;;
        7)
        echo "saturday"
               ;;
        *)echo "enter correct number"
                ;;
esac

echo " "

echo "Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,..."

echo "enter the number"
read n
a=$(( $n % 10 ))
b=$(( $n % 1000 ))
b1=$(( $b % 10 ))
c=$(( $n % 10000 % 100 ))

echo "the 1's place is $a 10's is $b1 100's is $c"
