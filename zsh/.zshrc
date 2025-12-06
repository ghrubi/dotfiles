# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit if it's not there
if [ ! -d "$ZINIT_HOME" ]; then
  midir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add powerlevel10K
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add snippets from oh-my-zsh
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::kubectl
zinit snippet OMZP::kubectx
zinit snippet OMZP::command-not-found
zinit snippet OMZP::gcloud

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Command History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
#zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# since eza is aliased to ls. :ls:* doesn't work
zstyle ':fzf-tab:complete:eza:*' fzf-preview 'eza -lh --group-directories-first --icons=auto $realpath'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -lh --group-directories-first --icons=auto $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -lh --group-directories-first --icons=auto $realpath'



# Shell integrations
# evals
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# source more zsh functionality
#source ~/zsh-adds/poetry.zsh


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/Applications:$PATH

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"

export GOPRIVATE=github.com/hydrobuilder

# My shit
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
set -o vi
#export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH

# add . (or cwd) to path
export PATH=.:$PATH

# have pipenv place virtual environment in cwd, not in ~/.local/...
#export PIPENV_VENV_IN_PROJECT=1

# Fire focus follows mouse AKA AutoRaise
#~/Applications/AutoRaiseStart.sh

# Adds for work. 
# nvm...
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/g.hrubi/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/g.hrubi/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/g.hrubi/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/g.hrubi/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# The next line sets the ENV VAR for gcloud and python
export CLOUDSDK_PYTHON="/usr/local/bin/python3"

# PATH adds
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/usr/local/opt/mysql-client/bin"

# This must be at the end otherwise it won't take
#  and you'll have to source ~/.zshrc in the terminal...
# keybinding for autosuggestion-accept
bindkey '^ ' autosuggest-accept
bindkey '^k' history-search-forward
bindkey '^j' history-search-backward

source ~/.aliases-bash-zsh
