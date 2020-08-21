# .bash_profile

# First, source master .profile:
[ -f $HOME/.profile ] && source $HOME/.profile

# BEGIN UBUNTU SUGGESTED:
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#END NOOBUNTU, BEGIN OWN:
# Set env vars (only needs done once)
export MPD_PORT="6601"
export PRE_CXX=ccache
export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"
export SVDIR="$HOME/service"

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
