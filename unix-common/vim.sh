#!/usr/bin/env bash

mkdir -p ~/.vim
(
    cd ~/.vim && git clone https://github.com/tpope/vim-pathogen.git
)
mkdir -p ~/.vim/autoload
(
    cd ~/.vim/autoload && ln -s ../vim-pathogen/autoload/pathogen.vim .
)
mkdir -p ~/.vim/bundle
(
    cd ~/.vim/bundle || return 1
    git clone https://github.com/nvie/vim-flake8.git
    git clone https://github.com/wincent/command-t.git
    git clone https://github.com/altercation/vim-colors-solarized.git
    git clone https://github.com/terryma/vim-multiple-cursors.git
    git clone https://github.com/scrooloose/nerdtree.git
    git clone https://github.com/tpope/vim-surround.git
)
