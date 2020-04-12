#!/bin/bash
set -ex

apt-get install -y -qq vim tmux git

cp tmux-start /usr/bin/tmux-start

if [ -f /etc/tmux.conf ]; then
  mv /etc/tmux.conf /etc/tmux.conf.bak
fi
cp tmux.conf /etc/tmux.conf

if [ -f /etc/gitconfig ]; then
  mv /etc/gitconfig /etc/gitconfig.bak
fi
cp gitconfig /etc/gitconfig

if [ -f /etc/vim/vimrc.local ]; then
  mv /etc/vim/vimrc.local /etc/vim/vimrc.local.bak
fi
cp vimrc /etc/vim/vimrc.local

if [ ! -d /etc/vim/bundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git /etc/vim/bundle/Vundle.vim
fi
