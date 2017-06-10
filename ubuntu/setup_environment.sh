#!/bin/bash

apt-get update
apt-get upgrade -y -q
apt-get install aptitude git gcc g++ clang make binutils build-essential \
    python3 python3-pip tmux wget curl

USER=$(who | head -1 | awk '{ print $1; }')

git clone --depth=1 https://github.com/Bash-it/bash-it.git /home/$USER/.bash_it
chown -R $USER:$USER /home/$USER/.bash_it
sudo -H -u $USER /home/$USER/.bash_it/install.sh

git clone https://github.com/amix/vimrc.git /home/$USER/.vim_runtime
chown -R $USER:$USER /home/$USER/.vim_runtime
sudo -H -u $USER sh /home/$USER/.vim_runtime/install_awesome_vimrc.sh
