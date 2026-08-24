# Initialize completion
autoload -Uz compinit && compinit -i
zstyle ':completion:*' menu select=4
zmodload zsh/complist

# Nicer history
HISTSIZE=1048576
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt incappendhistory
setopt extendedhistory
