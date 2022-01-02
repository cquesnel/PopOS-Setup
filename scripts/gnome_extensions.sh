#!/bin/bash
# Script to set my extensions how I like them.

# MIT License - Copyright (c) 2021 Nicolás Castellán
# SPDX License identifier: MIT
# THE SOFTWARE IS PROVIDED "AS IS"
# Read the included LICENSE file for more information

(xdg-open "https://extensions.gnome.org/extension/906/sound-output-device-chooser/" &>/dev/null) &
(xdg-open "https://extensions.gnome.org/extension/1160/dash-to-panel/" &>/dev/null) &
(xdg-open "https://extensions.gnome.org/extension/3628/arcmenu/" &>/dev/null) &
(xdg-open "https://extensions.gnome.org/extension/945/cpu-power-manager/" &>/dev/null) &
(xdg-open "https://extensions.gnome.org/extension/19/user-themes/" &>/dev/null)

#gnome-extensions enable "apps-menu@gnome-shell-extensions.gcampax.github.com"
gnome-extensions enable "places-menu@gnome-shell-extensions.gcampax.github.com"

read -p "Press enter to continue... "

# Thanks for downloading, and enjoy!
