#!/usr/bin/bash

echo "Are you sure?Gonna delete all your log files which are older than 30 days.[y/n]"

read -r resp

if [ "$resp" == 'y' ]; 
then 
	find  "*.log" -mtime +30 -delete;
	if [ $? != 0 ]; 
	then
		echo "Operation failed";
	else
		echo "Deleted sucessfully";
	fi
else
	echo "Fine, not gonna delete"
fi 

