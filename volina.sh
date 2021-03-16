#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"

echo

echo -e "[1] ${GREEN}pre-configuring packages${NOCOLOR}"
sudo hostnamectl set-hostname volinaVPS
sudo dpkg --configure -a

echo

echo -e "[2] ${GREEN}fix and attempt to correct a system with broken dependencies${NOCOLOR}"
sudo apt-get install -f

echo

echo -e "[3] ${GREEN}update apt cache${NOCOLOR}"
sudo apt-get update -y

echo

echo -e "[4] ${GREEN}upgrade packages${NOCOLOR}"
sudo apt-get upgrade -y

echo

echo -e "[5] ${GREEN}distribution upgrade${NOCOLOR}"
sudo apt-get dist-upgrade -y

echo

echo -e "[5] ${GREEN}installing java 11${NOCOLOR}"
sudo apt install default-jre -y

echo

echo -e "[5] ${GREEN}installing node.js${NOCOLOR}"
sudo apt install ffmpeg
sudo apt -y install curl dirmngr apt-transport-https lsb-release ca-certificates
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt -y install nodejs
sudo apt -y  install gcc g++ make

echo -e "[6] ${GREEN}installing final packages${NOCOLOR}"
sudo apt-get upgrade zip unzip screen -y
clear
rm volina.sh

echo -e "${RED}Successfully finished Volina Update${NOCOLOR}"

echo
