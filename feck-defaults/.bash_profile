# .bash_profile

# MPD daemon start (if no other user instance exists)
if [ ! -s $HOME/.config/mpd/mpdpid ]; then
    mpd
fi

# First, source master .profile:
[ -f $HOME/.profile ] && source $HOME/.profile

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
# Set env vars (only needs done once)
export MPD_PORT="6600"
#export MPD_HOST="/home/$USER/.config/mpd/socket"
export PRE_CXX=ccache
export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc
