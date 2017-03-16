# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Change the window title of X terminals 
case ${TERM} in
	xterm*|rxvt*|Eterm|aterm|kterm|gnome)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\007"'
		;;
	screen)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/$HOME/~}\033\\"'
		;;
esac

# History Configuration
HISTCONTORL=ignoredups:ignorespace #Don't duplicate lines in the history
shopt -s histappend #Append to the history file, don't overwrite it
HISTSIZE=1000
HISTFILESIZE=2000

# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
if [[ -f ~/.dir_colors ]] ; then
	eval $(dircolors -b ~/.dir_colors)
elif [[ -f /etc/DIR_COLORS ]] ; then
	eval $(dircolors -b /etc/DIR_COLORS)
fi

# Aliases
alias ls='ls -l --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --color=auto'

# Personal prompt
PS1="\[\033[01;30m\]\u@\h\[\033[01;35m\]:\w\n$\[\033[00m\] "

set -o noclobber
