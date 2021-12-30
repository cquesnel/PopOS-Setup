#!/bin/bash

GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

timeout=10

printf "Configuring ${CYAN}Systemd-Boot${NC} with a ${GREEN}${timeout}s${NC} timeout \n\n"

if sudo grep -Fq "timeout" /boot/efi/loader/loader.conf
then
	printf "Timeout entry present, leaving as is.\n"
else
    printf "No timeout entry found in config. Adding. \n"
	sudo printf "timeout ${timeout}" | sudo dd conv=notrunc oflag=append bs=1 of=/boot/efi/loader/loader.conf
fi