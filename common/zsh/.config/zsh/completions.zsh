# Load completions
autoload -Uz compinit && compinit

# Kubernetes completions
if command -v kubectl >/dev/null 2>&1; then
  source <(kubectl completion zsh)
  compdef __start_kubectl k
fi

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
#zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# since eza is aliased to ls. :ls:* doesn't work
zstyle ':fzf-tab:complete:eza:*' fzf-preview 'eza -lh --group-directories-first --icons=auto $realpath'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -lh --group-directories-first --icons=auto $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -lh --group-directories-first --icons=auto $realpath'

# Reload all completions
zinit cdreplay -q
