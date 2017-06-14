#!/bin/bash

apt-get update
apt-get upgrade -y -q
apt-get install aptitude git gcc g++ clang make binutils build-essential \
    python3 python3-pip tmux wget curl
