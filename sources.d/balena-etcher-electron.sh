#!/usr/bin/env bash

printf "Preparing \e[01mBalena Etcher\e[00m source...\n"

curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \ | distro=ubuntu sudo -E bash