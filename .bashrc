#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export TERMINAL=termite
export EDITOR=vim
export VISUAL=vim

alias ls='ls --color=auto'
alias pac='sudo pacman'
PS1='[\u@\h \W]\$ '
