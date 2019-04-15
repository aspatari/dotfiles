#!/bin/bash



# update mirrors
pacman-mirrors -g
# install yay  
sudo pacman -S yay

# update system
yay -Syua --noconfirm
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
git config --global user.name "Artur Spatari"
git config --global user.email "artur.spatari@gmail.com"



## Enable SSD Trim
sudo systemctl enable fstrim.timer

# Settings

## Theme
gsettings set org.cinnamon.desktop.interface gtk-theme 'Flat-Remix-GTK-Red-Darkest-Solid-NoBorder' 
gsettings set org.cinnamon.desktop.interface icon-theme 'Flat-Remix-Dark'
gsettings set org.cinnamon.theme name 'Plata-Noir'
gsettings set org.cinnamon.desktop.wm.preferences theme 'Plata-Noir'
gsettings set org.cinnamon.desktop.wm.preferences num-workspaces 4
### Wallpaper
gsettings set org.cinnamon.desktop.background picture-uri "file:///home/$(whoami)/dotfiles/images/wallpapers/night_city.jpg"   


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
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ zoom-enabled true
gsettings set net.launchpad.plank.dock.settings:/net/launchpad/plank/docks/dock1/ dock-items "['nemo.dockitem', 'google-chrome.dockitem', 'jetbrains-pycharm.dockitem', 'visual-studio-code.dockitem', 'GitKraken.dockitem', 'vstudio.dockitem', 'qbittorrent.dockitem', 'vlc.dockitem', 'spotify.dockitem', 'mailspring.dockitem', 'franz.dockitem', 'pamac-manager.dockitem']"



# Panel Settings
gsettings set org.cinnamon panels-enabled "['1:0:top']"
gsettings set org.cinnamon panels-height "['1:24']"


# Languages Layout
gsettings set org.gnome.libgnomekbd.keyboard layouts "['us', 'ru']"
gsettings set org.gnome.libgnomekbd.keyboard options "['grp	grp:alt_shift_toggle']"


## Top Bar
gsettings set org.cinnamon enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:separator@cinnamon.org:1', 'panel1:right:3:notifications@cinnamon.org:7', 'panel1:right:1:workspace-switcher@cinnamon.org:8', 'panel1:right:2:separator@cinnamon.org:10', 'panel1:right:6:systray@cinnamon.org:11', 'panel1:right:7:separator@cinnamon.org:12', 'panel1:right:8:removable-drives@cinnamon.org:13', 'panel1:right:9:network@cinnamon.org:14', 'panel1:right:10:sound@cinnamon.org:15', 'panel1:right:11:power@cinnamon.org:16', 'panel1:right:12:inhibit@cinnamon.org:17', 'panel1:right:13:calendar@cinnamon.org:18', 'panel1:right:14:user@cinnamon.org:19', 'panel1:right:5:blueberry@cinnamon.org:20', 'panel1:right:4:keyboard@cinnamon.org:21']"

# Clock 
gsettings set org.cinnamon.desktop.interface clock-use-24h true
gsettings set org.cinnamon.desktop.interface first-day-of-week 1

## Nemo
gsettings set org.nemo.window-state start-with-sidebar false
gsettings set org.nemo.window-state start-with-status-bar false