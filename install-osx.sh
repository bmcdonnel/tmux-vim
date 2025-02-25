#!/bin/bash
set -ex

# apt-get install -y -qq vim tmux git

cp tmux-start /usr/local/bin/tmux-start

cp tmux.conf ~/.tmux.conf

cp gitconfig ~/.gitconfig

cp vimrc ~/.vimrc

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
