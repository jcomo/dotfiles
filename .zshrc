DOTFILES="$HOME/dotfiles"

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="jcomo"


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-syntax-highlighting terraform)

source $ZSH/oh-my-zsh.sh

eval $(/usr/libexec/path_helper -s)
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/opt/openssl/lib/

source $DOTFILES/funcs
source $DOTFILES/profile
source $DOTFILES/aliases
source $DOTFILES/aliases.zsh
