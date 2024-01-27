export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git 
    golang
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
FLUTTER_BIN=$HOME/development/flutter/bin

PATH=$HOMEBREW:$FLUTTER_BIN:$PATH
