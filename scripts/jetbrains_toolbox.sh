#!/bin/bash

printf "Downloading & Installing \e[36mJetbrains Toolbox\e[00m\n"

sudo curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash

printf "Starting \e[36mJetbrains Toolbox\e[00m\n up for the first time. Please accept the EULA.\n"
/opt/jetbrains-toolbox/jetbrains-toolbox