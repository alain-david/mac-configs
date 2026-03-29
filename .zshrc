export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=green'

plugins=(
    git
    brew
    # Customs plugins
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='vim'
fi

# Env
HOMEBREW_BIN=/opt/homebrew/bin
FLUTTER=$HOME/flutter/bin
PUB_CACHE=$HOME/.pub-cache/bin
DOCKER_CLI=/Applications/Docker.app/Contents/Resources/bin

PATH=$HOMEBREW_BIN:$FLUTTER:$PUB_CACHE:$DOCKER_CLI:$PATH
