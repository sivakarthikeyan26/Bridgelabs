#!/bin/bash -X

function empcheck()
{
 a=$(( RANDOM%3+1 ))

        case $a in
                1)
                empHrs=$(($1+4))
                ;;
                2)
                empHrs=$(($1+8))
                ;;
                3)
                empHrs=$(($1+0))
                ;;
                *)
                echo "invalid"
                ;;

        esac
}


rateph=20
empHrs=0
MaxHrsinMonth=20
NumofWorkingdays=20
totalworkingdays=1
while [[ empHrs -lt MaxHrsinMonth && totalworkingdays -lt NumofWorkingdays ]]
do
	empcheck empHrs
	((totalworkingdays++))
done
sal=$(($rateph*$empHrs))
echo "emp salary  = $sal"



