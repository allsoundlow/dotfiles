
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
