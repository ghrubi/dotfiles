# Omarchy environment (OMARCHY_PATH + PATH), needed by non-interactive shells.
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# Interactive configuration starts here.
[[ $- != *i* ]] && return

# Omarchy aliases, functions, completion and prompt integration.
source "$OMARCHY_PATH/default/bash/rc"

export STOW_DIR="$HOME/dotfiles"

set -o vi

alias ll='ls -al'
alias vi='nvim'
alias stow='stow -t ~'
alias ms='mega-sync'
alias mt='mega-transfers --show-syncs'
