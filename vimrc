set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=2
" " when indenting with '>', use 4 spaces width
set shiftwidth=2
" " On pressing tab, insert 4 spaces
set expandtab

set nu
set hlsearch
set nowrap

let mapleader = '\'

" set the runtime path to include Vundle and initialize
set rtp+=/etc/vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/junegunn/fzf'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" fzf settings
map <leader>ff :FZF<CR>

" nerdtree settings
map <leader>nt :NERDTreeToggle<CR>

let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  :PluginInstall
endif

colorscheme wombat256mod
