#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "Please Run This Script As A ROOT User" 1>&2
   exit 1
fi
# ...


echo "updating Your tmp files"
apt update -y
apt upgrade -y
apt-get update -y
apt-get upgrade -y
apt install zip unzip -y
apt install figlet toilet -y
clear
figlet -c RDP Installer

echo ""
echo "* RDP Installer"
echo "*"
echo "* Copyright (C) 2022 - 2022, DNxRG Development, <discord.gg/dnxrg>"
echo "*"
echo "* Made for Crystal Hosting"
echo "*"
echo "*"
echo "########################################################################################################"
echo "*                                                                                                      $"
echo "* [1] Create RDP.                                                                                      $"
echo "* [2] Create New User.                                                                                 $"
echo "*                                                                                                      $"
echo "########################################################################################################"
echo ""
echo ""

read -p "Enter Input: " input
case $input in  
    1) bash <(curl -s https://raw.githubusercontent.com/KaranGamerz207/RDP-script/main/rdp.sh);;
    2) bash <(curl -s https://raw.githubusercontent.com/KaranGamerz207/RDP-script/main/create%20user.sh);;
*) exit;;
esac
