# vim: set ft=sh:

export EDITOR="vim"

# create a better status readout for less
export LESS="-R -i-P%f (%i/%m) Line %lt/%L"

if [ $TERM != "screen-256color" ]; then
  export TERM="xterm-256color"
fi

if [[ -d $HOME/dotfiles/bin ]]; then
  export PATH="$HOME/dotfiles/bin:$PATH"
fi

# Add user installed sbin progs to path
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Go config
if installed go; then
  export GOPATH="$HOME/developer/go"
  export PATH="$GOPATH/bin:$PATH"
fi

# rbenv
if installed rbenv; then
  eval "$(rbenv init -)"
fi

# virtualenvwrapper
if installed virtualenvwrapper.sh; then
  export VIRTUALENVWRAPPER_PYTHON="`which python`"
  export VIRTUALENVWRAPPER_VIRTUALENV="`which virtualenv`"
  export WORKON_HOME="$HOME/.virtualenvs"
  source `which virtualenvwrapper.sh`
fi

# ipython
if installed ipython; then
  alias ipy="ipython"
fi

if [[ -f $HOME/.secrets ]]; then
  source $HOME/.secrets
fi
