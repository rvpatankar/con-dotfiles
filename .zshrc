
#################### added by rajesh for zen zsh setup - START
ZINIT_HOME="${HOME}/.local/share/zinit/zinit.git"

# download zinit if it is not there
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

#load completions
autoload -U compinit && compinit

# Keybindings
#bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
#bindkey '^[w' kill-region

# History
HISTSIZE=5000
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
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Aliases
alias ls='ls --color'
alias ll='ls -al --color'
alias la='ls -a --color'
alias vim='nvim'
alias c='clear'

# Shell integrations
eval "$(fzf --zsh)"

# initalize oh-my-posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
#################### added by rajesh - END

