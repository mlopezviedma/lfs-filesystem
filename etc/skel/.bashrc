# ~/.bashrc: executed by bash(1) for non-login shells.

unset MAILCHECK

export PS1="\[\e[32;1m\]\u@\h:\[\e[34;1m\]\W\[\e[0m\]\$ "
export HISTCONTROL=ignoreboth
export PAGER=less
export EDITOR=vim

alias ls='ls --color=auto --group-directories-first'
alias la='ls -Ah'
alias ll='ls -lh'
alias cp='cp -vi'
alias mv='mv -vi'
alias rm='rm -vi'
alias mkdir='mkdir -v'
alias rmdir='rmdir -v'
alias which='type -P'
alias du='du -sh'
alias df='df -h'

# Auto complete usernames for "su" and "upm" commands
complete -o default -A user su finger pinky upm

if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    export LS_COLORS
fi

[ -f ~/.bash_aliases ] && . ~/.bash_aliases
[ -f ~/.bash_functions ] && . ~/.bash_functions
