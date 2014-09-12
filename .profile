export EDITOR=vim

alias rm="rm -i"                            # confirm files to remove

# create a better status readout for less
export LESS='-R -i-P%f (%i/%m) Line %lt/%L'

if [ $TERM != "screen-256color" ]; then
  export TERM=xterm-256color
fi

export PYTHONPATH="/home/vagrant/dev/tornado/service_modules"

THEME="base16-solarized.light"
COLORS_HOME=$HOME/.config/colors/base16-shell
source "$COLORS_HOME/$THEME.sh"

# format json data
alias format_json="python -m json.tool"
