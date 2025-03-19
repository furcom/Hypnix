{ pkgs, ... }:
{
  programs.zsh = {
    autocd = false;
    enable = true;
    autosuggestion = {
      enable = true;
      highlight = "fg=#888888,bg=black,bold,cursive";
    };
    cdpath = [];
    completionInit = "autoload -U compinit && compinit";
    dirHashes = {
      docs= "~/Documents";
      vids = "~/Videos";
      pics = "~/Pictures";
      dls = "~/Downloads";
      hypnix = "~/hypnix";
    };
    dotDir = ".config/zsh";
    enableCompletion = true;
    enableVteIntegration = true;
    envExtra = "";
    history = {
      append = false;
      path = ".config/zsh/.zsh_history";
      share = true;
      size = 999999;
      save = 999999;
      expireDuplicatesFirst = false;
      extended = true;
      findNoDups = false;
      ignoreAllDups = false;
      ignoreDups = true;
      ignorePatterns = [];
      ignoreSpace = true;
      saveNoDups = false;
    };
    historySubstringSearch = {
      enable = true;
      searchDownKey = ["^[[B"];
      searchUpKey = ["^[[A"];
    };
    initExtraBeforeCompInit = "";
    initExtra = "
##############
## 3. ZINIT ##
##############
# 1. Set the Zinit directory
ZINIT_HOME=\"\${HOME}/.local/share/zinit\"

# 2. Load completions
autoload -Uz compinit && compinit

# 3. Download Zinit if not existing
if [ ! -d \"$ZINIT_HOME\" ]; then
   mkdir -p \"$(dirname $ZINIT_HOME)\"
   git clone https://github.com/zdharma-continuum/zinit.git \"$ZINIT_HOME\"
fi

# 4. Load Zinit
source \"\${ZINIT_HOME}/zinit.zsh\"

# 5. Zinit ZSH plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# 6. Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::kubectl
zinit snippet OMZP::archlinux
zinit snippet OMZP::debian
zinit snippet OMZP::docker
zinit snippet OMZP::podman
zinit snippet OMZP::command-not-found
zinit cdreplay -q

# 7. Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors \"\${(s.:.)LS_COLORS}\"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

bindkey -e
bindkey '^[x' kill-region
bindkey '^s' fzf-cd-widget
bindkey '^f' fzf-file-widget
bindkey '^h' fzf-history-widget
bindkey '^[[2~' paste
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[B' history-search-forward
bindkey '^[[A' history-search-backward
bindkey '^[[3~' delete-char #needed for DEL-key
    ";
    initExtraFirst = "";
    localVariables = {};
    loginExtra = "";
    logoutExtra = "";
    profileExtra = "";
    sessionVariables = {};
    shellGlobalAliases = {};
    syntaxHighlighting = {
      enable = true;
      # More highlighters: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/docs/highlighters.md
      highlighters = ["brackets"];
      package = pkgs.zsh-syntax-highlighting;
      patterns = {
        "rm -rf *" = "fg=white,bold,bg=red";
      };
      styles = {
        comment = "fg=black,bold";
      };
    };
    shellAliases = {
      # Programs
      ff="fastfetch";
      vim="nvim";
      v="nvim";

      # Navigation
      ls="ls --color";
      d="echo ''; eza";
      "#"="cd ..; d";
      c="clear";

      # Hypnix
      xx="cd $HOME/hypnix";
      xh="cd $HOME/hypnix/home";
      xs="cd $HOME/hypnix/system";

      # Nix
      nrb="sudo nixos-rebuild switch --flake $HOME/hypnix/#hypnix";
      nfu="sudo nix flake update";
      ngc="sudo nix-collect-garbage -d";

      # Configs
      zz="vim ~/hypnix/home/modules/shell/zsh.nix";
      kk="vim ~/hypnix/home/programs/kitty.nix";

      # Reboot
      reboot="systemctl reboot";
      poweroff="systemctl poweroff";
    };
  };
}
