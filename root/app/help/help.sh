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

printf "${BLUE}b${ENDCOLOR}${PURPLE}p${ENDCOLOR}OS - help \n"
printf "welcome to the quick help menu! \n"
printf "this will help you get started with bpOS. \n"
printf "to start the guide, type start. \n"
printf "to quit the help menu, type quit \n"

read -p ">>>" help
if [ "$help" = "start" ]; then
    echo "hi!"
elif [ "$help" = "quit" ]; then
    cd .. # i know that there is a better way to go back to the start but this works and I don't care.
    cd ..
    chmod +x boot.sh # make the file executable
    ./boot.sh # run the file
    
else
    printf "'$help' is not a command."
    clear
    sleep 1

    ScriptLoc=$(readlink -f "$0") #read filename of this file
    exec $ScriptLoc # execute said file
fi