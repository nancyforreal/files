#!/bin/bash



#'echo "Bash program to find if a is larger than b"'

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
		# If both a and b are numbers then this condition check for a > b?  
		if [ $a -gt $b ]
		then
			# If a > b, then prints True
			echo "True"
		else
			# If a is not larger than b, then prints False
			echo "False"
		fi
	else
		echo "Enter B as integer"
	fi

else
	echo "Enter A as integer"
fi
