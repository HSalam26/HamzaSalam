#!/bin/bash

# Take The Input From The User #
read x
read y

# Provide Operation Input #
echo "Enter your choice of operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch

# Switch Case To Perform The Operation #
case $ch in
	1)res=`echo $x + $y | bc`
	;;
	2)res=`echo  $x - $y | bc`
	;;
	3)res=`echo $x \* $y | bc`
	;;
	4)res=`echo "scale=2; $x / $y" | bc`
	;;
esac
echo "Result : $res"


