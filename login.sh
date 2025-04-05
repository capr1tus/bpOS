#!/usr/bin/env bash

RED="\e[31m"
ORANGE="\e[33m"
YELLOW="\e[93m"
GREEN="\e[32m"
BLUE="\e[34m"
PURPLE="\e[35m"
PINK="\e[31m"
ENDCOLOR="\e[0m"

clear # clear the screen

echo "bpOS login / register" # print what this menu is for
read -p "username> " usr # username input
read -p "password> " pas # password input

clear
echo "exporting user data"

sleep 0.5
export $usr # export it for use in the next file
sleep 0.5
export $pas # see above
clear

echo "building colors"
sleep 1

cd root # enter the root OS folder
chmod +x boot.sh # make the boot.sh file executable
./boot.sh # run the file