#!/bin/bash -x
	

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
