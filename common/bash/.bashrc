# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
export STOW_DIR=~/dotfiles
export PATH=$HOME/bin:$PATH

set -o vi

# Make an alias for invoking commands you use constantly
# alias p='python'
alias vi='nvim'
alias stow='stow -t ~'
alias ll='ls -al'
alias ms='mega-sync'
alias mt='mega-transfers --show-syncs'
alias y='run-yazi.sh'

