#1. Write a script to calculate gross salary for any number of employees
#Gross Salary =Basic + HRA + DA.
#HRA=10% and DA= 15%.
clear
echo "Enter name of the employee file:"
read filename
j=1
for i in `cat $filename`
do
    echo "EMPLOYEE $j"	
	echo "==========="
	name=$(echo $i | cut -d "|" -f2 )
	basic=$(echo $i | cut -d "|" -f7 )
	echo "Name :"$name
	echo "Basic salary :"$basic
	hra=$(expr $basic \* 10)
	hra=$(expr $hra / 100)
	da=$(expr $basic \* 15)
	da=$(expr $da / 100)
	echo "HRA :"$hra
	echo "DA :"$da
	gross=$(expr $basic + $hra + $da)
	echo "GROSS :"$gross
	j=$(expr $j + 1)
 
done

#2. An employee Basic Pay is input through keyboard where DA is 40% of basic pay and HRA is 20% of basic pay. Write a shell script to calculate gross salary, Gross Salary =Basic Pay + DA + HRA

#!/bin/bash
echo "enter the basic salary:"
read basal
grosal=$( echo "$basal+((40/100)*$basal)+((20/100)*$basal)" | bc -l)
echo "The gross salary : $grosal"

#3. Write a shell script that computes the gross salary of a employee according to the
#following rules:
#I. If basic salary is < 1500 then HRA =10% of the basic and DA =90% of the
#basic.
#II. If basic salary is >=1500 then HRA =Rs500 and DA=98% of the basic
#The basic salary is entered interactively through the key board
echo "enter the basic salary:"
read bsal
if [ $bsal -lt 1500 ]
then
gsal=$((bsal+((bsal/100)*10)+(bsal/100)*90))
echo "The gross salary : $gsal"
fi
if [ $bsal -ge 1500 ]
then
gsal=$(((bsal+500)+(bsal/100)*98))
echo "the gross salary : $gsal"
fi
