#!/bin/bash

sudo apt-get update
sudo apt-get install -y zsh
sudo apt-get install -y gvim
sudo apt-get install -y tmux
sudo apt-get install -y xclip
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chown $(id -g).$(id -u) .oh-my-zsh

#pygmalion
set -i -e 's/robbyrussell/pygmalion/g' .zshrc

#copy .vimrc
cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#solarized
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

#username:x:1634231:100:Your Name:/home/username:/bin/bash
