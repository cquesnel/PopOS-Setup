# bash script to be sourced from popOS_setup.sh

# Copy .zshrc and offer to change default shell
Separate 4
printf "Successfully installed \e[36mDocker\e[00m, configuring...\n"

printf "Creating docker user group and adding current user (allows running docker without sudo)\n"
sudo groupadd docker
sudo usermod -aG docker $USER
