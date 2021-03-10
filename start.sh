#!/bin/bash

GREEN="\033[1;32m"
NOCOLOR="\033[0m"


clear

echo -e "${GREEN}Starting Volina MC Server...${NOCOLOR}"
java -Xms2G -Xmx4G -Dfile.encoding=UTF-8 -XX:+UseConcMarkSweepGC -jar spigot.jar -nogui


