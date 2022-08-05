#!/bin/bash



read -p "Enter password :" pass
len="${#pass}"

if test $len -ge 8 ;then
	echo "$pass" | grep -q [0-10]
	if test $? -eq 0 ; then
		echo "$pass" | grep -q [A-Z]
		if test $? -eq 0 ; then
			echo "$pass" | grep -q [a-z]
			if test $? -eq 0 ; then
				echo "Strong password"
			else
				echo "Weak password incluce lower case letter"
			fi
		else
			echo "weak password include capital letter"
		fi
	else
		echo "Should contain numbers"
	fi
else
	echo "Password should 8 or more letters"
fi


