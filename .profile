export EDITOR=vim

alias rm="rm -i"                            # confirm files to remove

# create a better status readout for less
export LESS='-R -i-P%f (%i/%m) Line %lt/%L'

if [ $TERM != "screen-256color" ]; then
  export TERM=xterm-256color
fi

THEME="base16-atelierdune.dark"
COLORS_HOME=$HOME/.config/colors/base16-shell
source "$COLORS_HOME/$THEME.sh"

# RVM
if [[ -s $HOME/.rvm/scripts/rvm ]]; then
    export RUBYOPT=rubygems
    source $HOME/.rvm/scripts/rvm;
    PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
fi

# virtualenvwrapper
if which virtualenvwrapper.sh 2>&1 > /dev/null; then
    export VIRTUALENVWRAPPER_PYTHON=`which python`
    export VIRTUALENVWRAPPER_VIRTUALENV=`which virtualenv`
    export WORKON_HOME=$HOME/.virtualenvs
    source `which virtualenvwrapper.sh`
fi

# hub (github wrapper for mac)
if which hub 2>&1 > /dev/null; then
    alias git="hub"
fi

# ipython
if which ipython 2>&1 > /dev/null; then
    alias ipy="ipython"
fi

# format json data
alias format_json="python -m json.tool"

# load any custom (or private) settings for mac
if [[ -e ~/.profile_mac ]]; then
    source ~/.profile_mac
fi
