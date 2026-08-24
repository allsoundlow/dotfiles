# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# External plugins (initialized before)
source ~/.zsh/plugins_before.zsh

# Settings
source ~/.zsh/settings.zsh

# Aliases
source ~/.zsh/aliases.sh


# Add local node_modules to PATH for monorepo development
export PATH=$PATH:./node_modules/.bin:../../node_modules/.bin:../../../../node_modules/.bin

# Custom prompt
source ~/.zsh/prompt.zsh

#external settings 
source ~/.zsh/external.sh

# External plugins (initialized after)
source ~/.zsh/plugins_after.zsh

[[ -f ~/.zsh-local.sh ]] && source ~/.zsh-local.sh

