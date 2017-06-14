#!/bin/bash

# Install Bash-it
if [[ ! -e "~/.bash_it" ]]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git /home/$USER/.bash_it
    sh /home/$USER/.bash_it/install.sh
fi

# Install the ultimate Vim configuration
if [[ ! -e "~/vim_runtime" ]]; then
    git clone https://github.com/amix/vimrc.git /home/$USER/.vim_runtime
    sh /home/$USER/.vim_runtime/install_awesome_vimrc.sh
fi
