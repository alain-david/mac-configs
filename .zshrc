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
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Env
HOMEBREW=/opt/homebrew/bin
FLUTTER_BIN=/Users/alaindavid/development/flutter/bin
GEM=$HOME/.rbenv/versions/3.2.2/bin

PATH=$HOMEBREW:$GEM:$FLUTTER_BIN:$PATH
