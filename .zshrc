# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  thefuck
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

# Path exports
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export NODE_EXTRA_CA_CERTS=~/certs/NMProdCACertBundle.pem
export PATH="$PATH:/Users/lhn2424/.dotnet/tools"

alias ld="eza -lD"                                            # List dirs only
alias lf="eza -lF --color=always | grep -v /"                 # List files only
alias lh="eza -dl .* --group-directories-first"               # List hidden only files
alias ls="eza -al --group-directories-first"                  # List all (dirs first)


# Custom functions
function pull-obsidian-vault() {
  cd ~/Documents/Main\ Vault/
  git fetch
  git pull
}

function push-obsidian-vault() {
  cd ~/Documents/Main\ Vault/
  git add .
  git commit -m "`date +'%Y-%m-%d'`"
  git push
}