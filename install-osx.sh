#!/bin/bash
set -ex

# apt-get install -y -qq vim tmux git

cp tmux-start /usr/local/bin/tmux-start

if [ -f /usr/share/tmux.conf ]; then
  mv /usr/share/tmux.conf /usr/share/tmux.conf.bak
fi
cp tmux.conf /usr/share/tmux.conf

if [ -f /usr/share/gitconfig ]; then
  mv /usr/share/gitconfig /usr/share/gitconfig.bak
fi
cp gitconfig /usr/share/gitconfig

if [ -f /usr/share/vim/vimrc.local ]; then
  mv /usr/share/vim/vimrc.local /usr/share/vim/vimrc.local.bak
fi
cp vimrc /usr/share/vim/vimrc.local

if [ ! -d /usr/share/vim/bundle ]; then
  git clone https://github.com/VundleVim/Vundle.vim.git /usr/share/vim/bundle/Vundle.vim
fi
