####################################
#  ___ _   _ ___  ___ ___  __  __  #
# | __| | | | _ \/ __/ _ \|  \/  | #
# | _|| |_| |   / (_| (_) | |\/| | #
# |_|  \___/|_|_\\___\___/|_|  |_| #
#                                  #
#    .zshrc Version 2024-10-01     #
#                                  #
####################################

################
## 1. SOURCES ##
################
#source ~/.cache/wallust/sequences

################
## 2. EXPORTS ##
################
export VISUAL=vim
export EDITOR=vim
export TERM=kitty
export PATH=$PATH:$HOME/.config/oh-my-posh

##############
## 3. ZINIT ##
##############
# 1. Set the Zinit directory
ZINIT_HOME="${HOME}/.local/share/zinit"

# 2. Load completions
autoload -Uz compinit && compinit

# 3. Download Zinit if not existing
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# 4. Load Zinit
source "${ZINIT_HOME}/zinit.zsh"

# 5. Zinit ZSH plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# 6. Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::archlinux
zinit snippet OMZP::debian
zinit snippet OMZP::docker
zinit snippet OMZP::command-not-found
zinit cdreplay -q

# 7. Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

####################
## 4. KEYBINDINGS ##
####################
bindkey -e
bindkey '^[w' kill-region
bindkey '^s' fzf-cd-widget
bindkey '^u' fzf-file-widget
bindkey '^f' fzf-history-widget
bindkey '^[[B' history-search-forward
bindkey '^[[A' history-search-backward
bindkey "^[[3~" delete-char

################
## 5. HISTORY ##
################
HISTDUP=erase
HISTSIZE=5000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history
setopt sharehistory
setopt appendhistory
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_ignore_all_dups

################
## 6. ALIASES ##
################
# Programs
alias neofetch="fastfetch"
alias vim="nvim"

# Navigation
alias ls="ls --color"
alias d="echo '' ; eza --all --header --long --group --time=modified --group-directories-first --icons=always --time-style='+%Y-%m-%d %H:%M:%S'"
alias \#="cd .. ; d"
alias c="clear"

# Nix
alias xx="cd $HOME/hypnix"
alias nrb="sudo nixos-rebuild switch --flake $HOME/hypnix/#hypnix"
alias nru="sudo nix flake update"
alias ngc="sudo nix-collect-garbage -d"

# Configs
alias zz="vim $HOME/.zshrc"
alias bb="vim $HOME/.bashrc"
alias kk="vim $HOME/.config/kitty/kitty.conf"

# SSH
#eval $(ssh-agent) >/dev/null
#alias keys="cd $HOME/.ssh"
#alias delkey="ssh-add -D"
#alias addkey="eval `ssh-agent` ; ssh-add $HOME/.ssh/id_ed25519"

# Git
alias githome='git -C ~/git/Hypnix add .; echo -n "Commit message: "; read msg; git -C ~/git/Hypnix commit -m "$msg"; git -C ~/git/Hypnix push https://furcom:$(sudo cat $HOME/.git_pat)@github.com/furcom/Hypnix.git main'
alias gitarch='git -C ~/git/Hypnix add .; echo -n "Commit message: "; read msg; git -C ~/git/Hypnix commit -m "$msg"; git -C ~/git/Hypnix push https://furcom:$(sudo cat $HOME/.git_pat)@github.com/furcom/Hypnix.git main'
alias gitnix='git -C ~/git/Hypnix add .; echo -n "Commit message: "; read msg; git -C ~/git/Hypnix commit -m "$msg"; git -C ~/git/Hypnix push https://furcom:$(sudo cat $HOME/.git_pat)@github.com/furcom/Hypnix.git main'

# Reboot
alias reboot="systemctl reboot"
alias poweroff="systemctl poweroff"

##################
## 7. AUTOSTART ##
##################
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/config.yaml)"
