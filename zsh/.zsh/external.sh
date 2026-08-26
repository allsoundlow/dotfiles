
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# conda
# ============================================
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
[ -f /opt/anaconda3/etc/profile.d/conda.sh ] && . /opt/anaconda3/etc/profile.d/conda.sh
# <<< conda initialize <<<
#bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --exclude .git'
export FZF_DEFAULT_OPTS='
  --height 40% --layout=reverse --border
  --bind ctrl-/:toggle-preview
'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always --line-range :200 {}'"
export FZF_ALT_C_COMMAND='fd --type d --hidden --exclude .git'
export FZF_ALT_C_OPTS="--preview 'ls -1 {}'"
export FZF_CTRL_R_OPTS="--reverse --bind 'ctrl-y:execute-silent(pbcopy <<< {2..})+abort'"

if command -v fzf >/dev/null; then
    source <(fzf --zsh)
fi

