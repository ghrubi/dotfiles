command -v starship >/dev/null 2>&1 && eval "$(starship init zsh)"
command -v fzf >/dev/null 2>&1 && eval "$(fzf --zsh)"
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init --cmd cd zsh)"
