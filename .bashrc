# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

source /etc/bash_completion.d/git.sh
source /etc/bash_completion.d/git-prompt.sh
source /etc/bash_completion.d/zypper.sh

#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
PS1='\[\e[1;32m\]\u@\h:\W$(__git_ps1 " (%s)")>\[\e[0m\] '

#history
HISTSIZE=1000
HISTFILESIZE=2000
HISTCONTROL=ignoreboth

# alias
  test -s ~/.alias && . ~/.alias || true
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias pubkey='cat ~/.ssh/id_rsa.pub'
  alias dropbox='~/.dropbox-dist/dropboxd &'
  alias js='jekyll2.0 serve --detach'
  alias jk='pkill ruby-mri'
  alias ipcon='nmap -sP 192.168.1.0/24'
  alias ip='curl http://ifconfig.me'

# ssh
export SSH_KEY_PATH="~/.ssh/dsa_id"

# editor
export EDITOR="vim"

# TAB menu-complete
bind '"\C-i": menu-complete'

#===========================================================================
# ASCII
#===========================================================================
echo 'Welcome to openSUSE 13.1 "Bottle" - Kernel 3.11.10
Have a lot of fun!'
