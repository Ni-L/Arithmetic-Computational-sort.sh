#!/bin/bash 
	read -p "Enter the value 'a'" a
	read -p "Enter the value 'b'" b
	read -p "Enter the value 'c'" c
	

	expression=$(($a%$b+$c))
		echo $expression
