# ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

typeset -U path PATH        # автоматична дедуплікація

path=(
  $HOME/.local/bin
  $HOME/.bun/bin
  $HOME/.maestro/bin
  /opt/homebrew/opt/mysql@8.0/bin
  /Library/Frameworks/Python.framework/Versions/3.14/bin
  $path
)

export BUN_INSTALL="$HOME/.bun"

# nvm default version without loading nvm itself
export NVM_DIR="$HOME/.nvm"
if [ -s "$NVM_DIR/alias/default" ]; then
    NVM_DEFAULT="$(cat "$NVM_DIR/alias/default")"
    path=("$NVM_DIR/versions/node/v${NVM_DEFAULT#v}/bin" $path)
fi
