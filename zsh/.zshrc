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

# Enable bash completion
autoload bashcompinit && bashcompinit

# Setup for kw
source $HOME/.local/lib/kw/bash_autocomplete.sh
export PATH=$HOME/.local/bin:$PATH # kw

# Add scripts to PATH
export PATH=$HOME/.scripts:$PATH
