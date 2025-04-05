#!/usr/bin/env bash

RED="\e[31m"
ORANGE="\e[33m"
YELLOW="\e[93m"
GREEN="\e[32m"
BLUE="\e[34m"
PURPLE="\e[35m"
PINK="\e[31m"
ENDCOLOR="\e[0m"

clear

printf "${BLUE}b${ENDCOLOR}${PURPLE}p${ENDCOLOR}OS - main menu \n"
printf "help for help, quit to quit \n"
read -p ">>> " boot

if [ "$boot" = "help" ]; then
    clear
    cd app/help
    chmod +x help.sh # make the file executable
    ./help.sh # run the file

elif [ "$boot" = "quit" ]; then
    exit 0
else
    printf "'$boot' is not a command."
   
    sleep 1
    clear
    ScriptLoc=$(readlink -f "$0") #read filename of this file
	exec $ScriptLoc # execute said file
fi