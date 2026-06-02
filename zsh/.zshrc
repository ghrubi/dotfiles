# Powerlevel10k instant prompt. Keep near top.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

source "$HOME/.config/zsh/plugins.zsh"
source "$HOME/.config/zsh/history.zsh"
source "$HOME/.config/zsh/completions.zsh"
source "$HOME/.config/zsh/env.zsh"
source "$HOME/.config/zsh/bindings.zsh"
source "$HOME/.config/zsh/integrations.zsh"

# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f ~/.aliases-bash-zsh ]] || source ~/.aliases-bash-zsh

# starship
eval "$(starship init zsh)"
