#!/usr/bin/bash

installNotion(){
	echo "deb [trusted=yes] https://apt.fury.io/notion-repackaged/ /" | sudo tee /etc/apt/sources.list.d/notion-repackaged.list;
	sudo apt update;
	sudo apt install notion-app-enhanced;
	sudo apt install notion-app;
}


if [ "$(uname)" == "Linux" ];
then 
	echo "This is a Linux Machine";
	installNotion;
	
else
	echo "This is not a linux Machine"
fi 

