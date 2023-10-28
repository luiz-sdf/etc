# System-wide .bashrc file for interactive bash(1) shells.

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

set -o vi

unset HISTFILE

export PS1='$ '
export EDITOR=vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias news='SFEED_PLUMBER_INTERACTIVE=1 SFEED_AUTOCMD=tgo SFEED_YANKER="wl-copy -n" SFEED_URL_FILE="$HOME/.sfeed/urls" sfeed_curses "$HOME/.sfeed/feeds/"*'
