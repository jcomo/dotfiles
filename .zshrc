# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Example aliases
alias rm="rm -i"
alias git="hub"
alias cwd='printf "%q\n" "$(pwd)" | pbcopy'
alias csci="cd ~/Documents/Dropbox/College/CSCI\\ 315/jbc027"
alias datamining="cd ~/Documents/Dropbox/College/CSCI\\ 379"
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vim)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin:~/.mybin

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# create a better status readout for less
export LESS='-i-P%f (%i/%m) Line %lt/%L'
export TERM=xterm-256color

export RUBYOPT=rubygems
