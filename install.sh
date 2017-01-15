#!/bin/bash


#Create symlink for .i3
#rm -rf ~/.i3
#ln -s ~/dotfiles/i3/ ~/.i3
#sudo ln -s ~/dotfiles/oblogout.conf /etc/oblogout.conf


#zsh
##antigen
curl https://cdn.rawgit.com/zsh-users/antigen/v1.3.2/bin/antigen.zsh > antigen.zsh
sudo ln -s ~/dotfiles/zshrc ~/.zshrc

yaourt -S zsh ruby-sass google-chrome pamac pamac-tray-appindicator git-kraken git antigen-git



#fonts
git clone https://github.com/powerline/fonts.git


#vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
