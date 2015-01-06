#!/bin/bash

cd $HOME

# Check to make sure dotfiles is located at $HOME/dotfiles
if [ ! -d dotfiles ]; then
  echo "Could not find dotfiles directory. Make sure you place it under $HOME"
  exit 1
fi

if [ "`uname -s`" == "Darwin"]; then
    LN_FLAGS="-s"
else
    LN_FLAGS="-sb"
fi


if [ -d .emacs.d/ ]; then
    mv .emacs.d .emacs.d~
fi

if [ -d .vim/ ]; then
    mv .vim .vim~
fi

if [ -d .oh-my-zsh/ ]; then
  mv .oh-my-zsh .oh-my-zsh~
fi

# Link new dotfiles and backup old
ln $LN_FLAGS dotfiles/.screenrc .
ln $LN_FLAGS dotfiles/.tmux.conf .

# bash config files
ln $LN_FLAGS dotfiles/.bash_profile .
ln $LN_FLAGS dotfiles/.bashrc .
if [ ! -f .bashrc_custom ]; then
  touch dotfiles/.bashrc_custom
  ln -s dotfiles/.bashrc_custom .
fi

# zsh config files
ln $LN_FLAGS dotfiles/.zshrc .

# profile config
ln $LN_FLAGS dotfiles/.profile .

# check for custom zsh config
if [ ! -f .zshrc_custom ]; then
  touch dotfiles/.zshrc_custom
  ln -s dotfiles/.zshrc_custom .
fi

# Vim config files
ln $LN_FLAGS dotfiles/.vimrc .
ln -sf dotfiles/.vim .

# conky
ln $LN_FLAGS dotfiles/.conkyrc .

# global gitignore
ln $LN_FLAGS dotfiles/.gitignore_global .
git config --global core.excludesfile ~/.gitignore_global

ln -sf dotfiles/.emacs.d .

ln -sf dotfiles/.oh-my-zsh .

read -p "Clean up? This will remove all original files (y/n) " response
if [ "$response" == "y" ]; then
  rm -f .*~
fi

