#!/bin/bash




#echo "Bash program to find if a is larger than b"

echo "Enter a value: "
# taking input a value
read a

echo "Enter b value: "
#taking input for b
read b

# Checking with regular expressions
# The value of "a" should start with either + or -, or none of them
# ? -- signifies that one of them or none of them
# [0-9] It is the integer range
# + -- signifies that one or more
# $ -- is for ending

# If Condition checks if the entered value is INT/Number or not
if [[ $a =~ ^[+-]?[0-9]+$ ]]
then
	if [[ $b =~ ^[+-]?[0-9]+$ ]]
	then
		# Using $((expr)) which gives the difference
		echo "Difference is " $(( a - b ))
	else
		echo "Enter B as integer"
	fi

else
	echo "Enter A as integer"
fi
