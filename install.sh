#!/bin/bash


#Create symlink for .i3
rm -rf ~/.i3
ln -s ~/dotfiles/i3/ ~/.i3






#vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
