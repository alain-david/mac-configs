export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

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
HOMEBREW=/opt/homebrew/bin
DOTNET=$HOME/.dotnet/tools
FLUTTER=$HOME/flutter/bin

PATH=$HOMEBREW:$DOTNET:$FLUTTER:$HOME/.pub-cache/bin:$PATH
