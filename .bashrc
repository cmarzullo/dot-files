# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# default prompt
root_prompt="[\[\e[0;31m\]\u\[\e[m\]@\h \W]\$ "
user_prompt="[\[\e[0;33m\]\u\[\e[m\]@\h \W]\$ "
# alt prompt
root_prompt_alt="[\A \[\e[0;31m\]\u\[\e[m\]@\h \w]\$ "
user_prompt_alt="[\A \[\e[0;33m\]\u\[\e[m\]@\h \w]\$ "

# if root set the root prompt else do the user prompt
[ $UID == 0 ] && PS1=$root_prompt || PS1=$user_prompt

# reprompt will toggle the prompt between the default and the alternate
function reprompt {
  if [ $UID == 0 ]
	then
		[ "$PS1" = "${root_prompt}" ] && PS1="${root_prompt_alt}" || PS1="${root_prompt}"
	else
		[ "$PS1" = "${user_prompt}" ] && PS1="${user_prompt_alt}" || PS1="${user_prompt}"
	fi
}


function gfind() { find . -type f -exec grep -inHr "$1" {} \; ; }

alias vimdiff='vim -d'
alias vt100='TERM=vt100'



export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
