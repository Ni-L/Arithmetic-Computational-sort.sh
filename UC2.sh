#!/bin/bash 
	read -p "Enter the value of 'a' " a
	read -p "Enter the value of 'b' " b
	read -p "Enter the value of 'c' " c
	

	expression=$(($a+$b*$c))
	echo $expression
