#!/bin/bash

red=$(tput setaf 1)
reset=$(tput sgr0)
date=$(date +"%Y%m%d_%H%M%S")

if [ -n "$#" ]
then 
	echo "${red}Error!${reset} No arguments provided."
else
	tar -czf logs_archive_${date}.tar.gz "$1"
fi

if [ -n "$2" ]
then
	mv logs_archive_${date}.tar.gz "$2"
fi
