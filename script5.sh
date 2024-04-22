#!/usr/bin/bash
if [[ ${1,,} == thishi ]]; then 
	echo "Welcome boss"
elif [[ ${1,,} == help ]]; then 
	echo "Enter your username"
else
	echo "Idk who u are"
fi 
