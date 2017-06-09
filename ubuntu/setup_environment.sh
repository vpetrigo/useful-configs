#!/bin/bash

apt-get update
apt-get upgrade -y -q

apt-get install aptitude git gcc g++ clang make binutils build-essential \
    python3 python3-pip tmux wget curl

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

git clone https://github.com/amix/vimrc.git ~/.vim_runtime
~/.vim_runtime/install_awesome_vimrc.sh

