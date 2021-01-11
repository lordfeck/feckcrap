# enable color support of ls and also add handy aliases
alias ls='ls -G'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

function wfile {
    file $( which "$@" )
}

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# own
alias cls=clear
alias cb='cd ..'
alias grep="grep --color"
alias gotop="gotop -c solarized"
alias findf="find -type f"

export VISUAL="/usr/bin/vim"
export EDITOR="$VISUAL"
export PATH="$PATH:/Users/mbrown/Library/Python/3.8/bin"

autoload -Uz compinit promptinit
compinit
promptinit

prompt fade red

autoload -Uz add-zsh-hook

function xterm_title_precmd () {
	print -Pn -- '\e]2;% %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
	print -Pn -- '\e]2;%~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (alacritty*|gnome*|konsole*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

