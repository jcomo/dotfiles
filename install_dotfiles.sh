#!/bin/bash

cd $HOME

# Check to make sure dotfiles is located at $HOME/dotfiles
if [ ! -d dotfiles ]; then
  echo "Could not find dotfiles directory. Make sure you place it under $HOME"
  exit 1
fi


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
if [ ! -f .bashrc_custom ]; then
  touch dotfiles/.bashrc_custom
  ln -s dotfiles/.bashrc_custom .
fi

# zsh config files
ln -sb dotfiles/.zshrc .

# check for custom zsh config
if [ ! -f .zshrc_custom ]; then
  touch dotfiles/.zshrc_custom
  ln -s dotfiles/.zshrc_custom .
fi

# Vim config files
ln -sb dotfiles/.vimrc .
ln -sf dotfiles/.vim .

# conky
ln -sb dotfiles/.conkyrc .

# global gitignore
ln -sb dotfiles/.gitignore_global .
git config --global core.excludesfile ~/.gitignore_global

ln -sf dotfiles/.emacs.d .

read -p "Clean up? This will remove all original files (y/n) " response
if [ "$response" == "y" ]; then
  rm -f .*~
fi

