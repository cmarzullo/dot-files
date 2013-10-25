# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Setup Prompt
if [ $UID == 0 ]; then
	PS1="\t \[\e[1;31m\]\u\[\e[0m\]@\h:\w \$ "
else
	PS1="\t \[\e[1;33m\]\u\[\e[0m\]@\h:\w \$ "
fi

# User specific aliases and functions
alias gfind='find . -type f -exec grep -q \!^ {} \; -exec ls -ldh {} \;'
alias gfind='find . -type f -exec grep -qi \!^ {} \; -exec ls -ldh {} \;'
alias vimdiff='vim -d'
alias vt100='TERM=vt100'


