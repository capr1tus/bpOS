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

echo -e "${BLUE}b${ENDCOLOR}${PURPLE}p${ENDCOLOR}OS - main menu"
echo -e "help for help, quit to quit"
read -p ">>> " boot

if [ "$boot" = "help" ]; then
    clear
    cd app/help
    sh help.sh
elif [ "$boot" = "quit" ]; then
    exit 0
else
    echo "'$boot' is not a command."
   
    sleep 1
    clear
    ScriptLoc=$(readlink -f "$0") #read filename of this file
	exec $ScriptLoc # execute said file
fi