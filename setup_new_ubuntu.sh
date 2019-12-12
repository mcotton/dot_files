#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install vim git htop net-tools curl wget tree screen openssh-server -y

sudo apt install python3 python3-pip -y

sudo apt install ffmpeg imagemagick -y

sudo apt install docker.io docker-compose -y
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
sudo usermod -aG docker mcotton

# install sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

#install insomnia
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt-get update
sudo apt-get install insomnia -y
