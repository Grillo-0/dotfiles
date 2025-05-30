# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set zsh theme
ZSH_THEME="gentoo"

# Enable hyphen-insensitive completion.
HYPHEN_INSENSITIVE="true"

# Remind to update when it's time to update omz
zstyle ':omz:update' mode reminder

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# Enable waiting dots
COMPLETION_WAITING_DOTS="true"

# Add plugins
plugins=(git aliases sudo zsh-autosuggestions)

# Source omz script
source $ZSH/oh-my-zsh.sh

# Ensure default LLVM compilation for kernel
export LLVM=1

# Set editor to nvim
export EDITOR=/usr/bin/nvim

# Enable bash completion for zsh
autoload bashcompinit && bashcompinit
# kw
source /home/grillo/.local/lib/kw/bash_autocomplete.sh
PATH=/home/grillo/.local/bin:$PATH # kw

alias vim=nvim
alias vi=nvim

# jj completions
autoload -U compinit
compinit
source <(jj util completion zsh)

export BUNDLE_PATH=~/.gems

# Enable ssh agent at the beginning
if [ -z "$SSH_AUTH_SOCK" ]; then
    eval "$(ssh-agent -s)"
    ssh-add
fi
