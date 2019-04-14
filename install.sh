#!/bin/bash



# update mirrors
pacman-mirrors -g
# install yay  
sudo pacman -S yay

# update system
# mount DATA


# Symlinks

#ln -s ~/Data/Music ~/
#ln -s ~/Data/Projects ~/


yay -S --noconfirm \
--needed \
--cleanafter \
zsh \
vim \
google-chrome \
gitkraken \
git \
antigen-git \
jetbrains-toolbox \
java-environment-common \
qbittorrent \
valentina-studio \
franz-bin \
visual-studio-code-bin \
guake-git \
plank \
plata-theme \
flat-remix-git \
flat-remix-gtk \
tmux \
tmuxp \
telegram-desktop \
mailspring \
python-pipenv \
albert \
spotify \
playerctl   
nerd-fonts-complete \
powerline \
powerline-fonts


## setup shell
chsh -s /bin/zsh
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf



#tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# Config git
git config --global user.name "Artur Spatari"                                             128 ↵  10037  23:29:32   
git config --global user.email "artur.spatari@gmail.com"




#http://averagelinuxuser.com/10-things-to-do-after-installing-manjaro/


# Settings

## Theme
gsettings set org.cinnamon.desktop.interface gtk-theme 'Flat-Remix-GTK-Red-Darkest-Solid-NoBorder' 
gsettings set org.cinnamon.desktop.interface icon-theme 'Flat-Remix-Dark'
gsettings set org.cinnamon.theme name 'Plata-Noir'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Plata-Noir'
gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 4

## Workspace
gsettings set org.cinnamon.desktop.wm.preferences workspace-names ['browser', 'code', 'chat', 'music']

## Guake
gsettings set guake.keybindings.global show-hide 'F2'
gsettings set guake.style.font palette-name 'Paul Millr'
gsettings set guake.style.font style 'mononoki Nerd Font Mono Bold 12.5'
gsettings set guake.general gtk-prefer-dark-theme true
gsettings set guake.general gtk-theme-name 'Flat-Remix-GTK-Red-Darkest-Solid-NoBorder'
gsettings set guake.general infinite-history true
gsettings set guake.general start-at-login true
gsettings set guake.general use-default-font false
gsettings set guake.general use-scrollbar false
gsettings set guake.general use-trayicon false
gsettings set guake.general window-tabbar false
gsettings set guake.general use-popup false
gsettings set guake.style cursor-shape 1
gsettings set guake.style cursor-blink-mode 1

## Keybinds for Workspaces
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-1 "['<Super>1']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-2 "['<Super>2']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-3 "['<Super>3']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-4 "['<Super>4']"
gsettings set org.cinnamon.desktop.keybindings.wm switch-to-workspace-5 "['<Super>5']"

gsettings set org.cinnamon.desktop.keybindings.wm toggle-fullscreen "['F11']"
gsettings set org.cinnamon.desktop.keybindings.wm panel-run-dialog "[]"


### Worspace settings
gsettings set org.cinnamon.muffin workspaces-only-on-primary true
gsettings set org.cinnamon workspace-expo-view-as-grid true

## Plank 
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ theme "Plata"
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ icon-size 38
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/zoom-enabled true

# Panel Settings
gsettings set org.cinnamon panels-enabled "['1:0:top']"
gsettings set org.cinnamon panels-height "['1:24']"