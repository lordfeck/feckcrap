# .bash_profile

# First, source master .profile:
[ -f $HOME/.profile ] && source $HOME/.profile

# Set env vars (only needs done once)

# BEGIN UBUNTU SUGGESTED:
# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize


#END NOOBUNTU, BEGIN OWN:
export MPD_PORT="6600"
export PRE_CXX=ccache
export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"
# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
