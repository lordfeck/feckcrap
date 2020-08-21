#!/bin/bash
alias cp="cp -v"
if [ "$1" = "install" ]; then
    cp {,~/}.bashrc
    cp {,~/}.bash_profile
    cp {,~/}.vimrc
    cp {,~/}.gvimrc
    cp {,~/}.config/alacritty/alacritty.yml
    #cp {,~/}.fluxbox/menu
    #cp {,~/}.fluxbox/keys
    #cp {,~/}.fluxbox/startup
    cp {,~/}.Xresources
    exit
fi

cp ~/.bashrc .
cp ~/.bash_profile .
cp ~/.xinitrc .
cp ~/.vimrc .
cp ~/.gvimrc .
cp {~/,}.config/alacritty/alacritty.yml
cp {~/,}.fluxbox/menu
cp {~/,}.fluxbox/keys
cp {~/,}.fluxbox/startup
cp ~/.Xresources .
