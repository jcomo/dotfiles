export EDITOR=vim
export OOEDITOR=subl

alias rm="rm -i"                            # confirm files to remove
alias cwd='printf "%q\n" "$(pwd)" | pbcopy' # copy working directory path

# Setup the path
export PATH=/usr/local/heroku/bin:$HOME/dotfiles/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin:/usr/texbin

# create a better status readout for less
export LESS='-R -i-P%f (%i/%m) Line %lt/%L'

if [ $TERM != "screen-256color" ]; then
  export TERM=xterm-256color
fi

# fix ANSI16 colors
source base16-tomorrow.dark.sh

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

# lets use tmux if we can
if which tmux 2>&1 >/dev/null; then
  if [ $TERM != "screen-256color" ] && [ $TERM != "screen" ]; then
    tmux attach -t hack || tmux new -s hack; exit
  fi
fi
