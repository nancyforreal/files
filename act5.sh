#!/bin/bash


read -p "Enter number : " n
temp=$n
while [ $temp -ne 0 ]
do
	reverse=$reverse$((temp%10))
	temp=$((temp/10))

done
echo "Reverse of $n is $reverse"

