#!/bin/bash

cd $HOME

# Backup old dotfiles dir
if [ -d ./dotfiles/ ]; then
    mv dotfiles dotfiles.old
fi

if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi

if [ -d .oh-my-zsh/ ]; then
    mv .oh-my-zsh .oh-my-zsh~
fi

if [ -d .vim/]; then
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
ln -sf dotfiles/.oh-my-zsh .

# Vim config files
ln -sb dotfiles/.vimrc .
ln -sf dotfiles/.vim .

ln -sf dotfiles/.emacs.d .
