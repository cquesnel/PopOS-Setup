# bash script to be sourced from popOS_setup.sh

# Copy .zshrc and offer to change default shell
Separate 4
printf "Successfully installed \e[36mzsh\e[00m, configuring...\n"

printf "Replacing dotfiles file\n"
    cat "$script_location/dotfiles/.zshrc" | tee ~/.zshrc ~/.zshrc.old >/dev/null
	cat "$script_location/dotfiles/.p10k.zsh" | tee ~/.p10k.zsh ~/.p10k.zsh.old >/dev/null
	cat "$script_location/dotfiles/.zshrc" | sudo tee /root/.zshrc /root/.zshrc.old >/dev/null

printf "Making \e[36mzsh\e[00m the default shell\n"
sudo usermod -s $(which zsh) $USER
sudo usermod -s $(which zsh) root

