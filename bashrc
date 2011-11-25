# .bashrc

#Enable emacsclient
export EDITOR=$HOME/.usr/bin/ec

VIRTUAL_ENV_DISABLE_PROMPT=1
export VIRTUAL_ENV_DISABLE_PROMPT

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# Check for an interactive session
[ -z "$PS1" ] && return

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

alias qmake='qmake-qt4'
#alias  vim='echo "Nope! Emacs!" && emacs -nw'



PATH=$HOME/.usr/bin:$PATH
export PATH

# Scala
SCALA_HOME=$HOME/.usr/src/scala
PATH=$SCALA_HOME/bin:$PATH


# Android SDK
PATH=$PATH:$HOME/.usr/src/androidsdk/tools
PATH=$PATH:$HOME/.usr/src/androidsdk/platform-tools
export PATH

# Python Virtualenv
#. ~/core_env/bin/activate

alias ls='ls --color=auto'
#alias  vim='echo "Nope! Emacs!" && emacs -nw'
#alias gvim='echo "Nope! Emacs!" && emacs'
#PS1='[\u@\h \W]\$ '

#alias python='python3'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" #Load up RVM
#source $HOME/perl5/perlbrew/etc/bashrc
