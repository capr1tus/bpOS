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

echo -e "${BLUE}b${ENDCOLOR}${PURPLE}p${ENDCOLOR}OS - help"
echo -e "welcome to the quick help menu!"
echo -e "this will help you get started with bpOS."
echo -e "to start the guide, type start."
echo -e "to quit the help menu, type exit"
read -p ">>>" help
if [ "$help" = "start" ]; then
    echo "hi!"
elif [ "$help" = "quit" ]; then
    exit 255
else
    echo "'$help' is not a command."
    clear
    sleep 1

    ScriptLoc=$(readlink -f "$0") #read filename of this file
    exec $ScriptLoc # execute said file
fi