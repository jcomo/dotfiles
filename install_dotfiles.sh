#!/bin/bash

# NOTE: this script assumes the dotfiles dir is directory under home

# For those installing this onto their own machines, it will not copy
# my .gitconfig file over as well. That one is only for me! ...unless
# you really want it.

cd $HOME

if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi

if [ -d .vim/ ]; then
    mv .vim .vim~
fi

# Link new dotfiles and backup old
ln -sb dotfiles/.screenrc .

# bash config files
ln -sb dotfiles/.bash_profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.bashrc_custom .

# zsh config files
ln -sb dotfiles/.zshrc .

# Vim config files
ln -sb dotfiles/.vimrc .
ln -sf dotfiles/.vim .

# conky
ln -sb dotfiles/.conkyrc .

ln -sf dotfiles/.emacs.d .
