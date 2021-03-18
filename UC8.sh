#!/bin/bash
	

	read -p "Enter the value 'a'" a
	read -p "Enter the value 'b'" b
	read -p "Enter the value 'c'" c
	

	declare -A compute
	

	compute[exp"0"]=$(($a+$b*$c))
	compute[exp"1"]=$(($a*$b+$c))
	compute[exp"2"]=$(($c+$a/$b))
	compute[exp"3"]=$(($a%$b+$c))
	

	i=0
	for key in ${!compute[@]}
	do
	arr[$i]=${compute[$key]}
	((i++))
	done
	    echo Computation result in Array ${arr[@]}
	

	temp=0
	for ((i=0; i<${#arr[@]}; i++ ))
	do
	for (( j=$(($i+1)); j<${#arr[@]}; j++ )) 
	do
	if [ ${arr[i]} -lt ${arr[j]} ]
	then
		temp=${arr[i]}
		arr[i]=${arr[j]}
		arr[j]=$temp
	echo Computation value in descending order ${arr[@]}
	fi
	done
	done
