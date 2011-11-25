
#Initialize completion
autoload -U compinit 
compinit

#Fancy completion
zstyle ':completion:*' menu select
#With aliases
setopt completealiases

#Vim/Emacs keybinds
bindkey -v
#bindkey -e

#Smart history search
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward


#Initialize fancy prompt
autoload -U promptinit colors
promptinit
colors
prompt redhat
