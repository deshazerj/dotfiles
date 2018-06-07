autoload -U compinit && compinit
zmodload -i zsh/complist

unsetopt menu_complete
setopt auto_menu
setopt complete_in_word

zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'