#!/bin/bash

# NOTE: this script assumes the dotfiles dir is directory under home

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

# global gitignore
ln -sb dotfiles/.gitignore_global .
git config --global core.excludesfile ~/.gitignore_global

ln -sf dotfiles/.emacs.d .
