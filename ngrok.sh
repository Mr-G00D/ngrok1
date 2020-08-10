#!/bin/bash
arch=$(dpkg --print-architecture)
update="apt update -y >/dev/null"
upgrade="apt upgrade -y >/dev/null"
iwget="apt install wget zip unzip figlet -y"
require(){
	eval $update
	eval $upgrade
	eval $iwget
}
echo -e """\033[93m
SIT BACK... I'LL DO THE REST
"""
sleep 5

echo -e "\033[92m[•] \033[93mInstalling the requirements... "
require
echo -e "\033[92m"
figlet "Installing Ngrok"
echo -e "\\033[92m"
figlet "Mr.GOOD"
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip
unzip ngrok-stable-linux-arm.zip
chmod 777 ngrok
mv ngrok /$HOME
rm -rf ngrok-stable-linux-arm.zip
echo -e "\033[92m"
echo "[*][success]  ngrok has been installed successfully"
echo "[*]Type  ' cd $HOME && ls ' to see the file"
echo "[*]B Y E"
