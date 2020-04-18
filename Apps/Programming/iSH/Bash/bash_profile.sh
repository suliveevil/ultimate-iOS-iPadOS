# bashrc

## vi mode

#set -o vi


## PS1

# export PS1="\n\[\033[1;30m\][$$:$PPID - \j:\!\[\033[1;30m\]]\[\033[0;36m\] \T \ \[\033[1;30m\][\[\033[1;34m\]\u@\H\[\033[1;30m\]:\[\033[0;37m\]${SSH_TTY:-o} \ \[\033[0;32m\]+${SHLVL}\[\033[1;30m\]] \[\033[1;37m\]\w\[\033[0;37m\]\[\033[1;34m\]\$(__git_ps1 \" (%s)\") \[\033[0;37m\] \n\$ "

# export PS1='\u@\h:\W \$ '

# export PS1='`a=$?;if [ $a -ne 0 ]; then a="  "$a; echo -ne "\[\e[1A\e[$((COLUMNS-2))G\e[31m\e[1;41m${a:(-3)}\]\[\e[0m\e[7m\e[2m\r\n\]";fi`${debian_chroot:+($debian_chroot)}\[\e[1;33m\]\u\[\e[1;31m\]@\[\e[1;35m\]\h\[\e[1;32m\][\t]\[\e[1;31m\]:\[\e[1;36m\]\w\[\e[1;34m\]\$\[\e[0;39m\]'

# skywind3000
export PS1='\[\e[38;5;135m\]\u\[\e[0m\]@\[\e[38;5;166m\]\h\[\e[0m\] \[\e[38;5;118m\]\w\[\e[0m\] \$ '

## history

export HISTCONTROL='erasedups'
export HISTTIMEFORMAT="%d/%m/%y %T "

## alias

alias update='apk update && apk upgrade'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias grep='grep --color'

# software

# tmux
# if not running interactively,do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux

