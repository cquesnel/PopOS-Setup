#!/bin/bash

printf "Downloading & Installing \e[36mRust\e[00m\n"

sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh