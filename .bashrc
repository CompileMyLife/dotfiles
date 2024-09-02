#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -e /etc/bash.bashrc ]; then
    source /etc/bash.bashrc
    export PS1='\[\e[1;36m\]\u@\h \W\$ \[\e[m\]'
elif [ -e /etc/bashrc ]; then
    source /etc/bashrc
    export PS1='\[\e[1;36m\]\u@\h \W\$ \[\e[m\]'
else 
    export PS1='\[\e[1;36m\]\u@\h \W\$ \[\e[m\]'
fi

# Aliases
alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias v='vim'
