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

# Homebrew
HOMEBREW_BIN=/opt/homebrew/bin

# Dotnet
DOTNET_ROOT=/usr/local/share/dotnet

# Flutter
FLUTTER=$HOME/flutter/bin
PUB_CACHE=$HOME/.pub-cache/bin

# Docker
DOCKER_CLI=/Applications/Docker.app/Contents/Resources/bin

# Add to PATH
PATH=$HOMEBREW_BIN:$DOTNET_ROOT:$FLUTTER:$PUB_CACHE:$PATH
