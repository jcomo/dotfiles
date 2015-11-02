export EDITOR=vim

alias rm="rm -i"  # confirm files to remove
alias be="bundle exec"

# create a better status readout for less
export LESS='-R -i-P%f (%i/%m) Line %lt/%L'

if [ $TERM != "screen-256color" ]; then
  export TERM=xterm-256color
fi

# Add user installed sbin progs to path
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Go config
export GOPATH=$HOME/developer/go
export PATH=$PATH:$GOPATH/bin

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

