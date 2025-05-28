{ pkgs, ... }:
{
  programs.neovim = {
    coc = {
      enable = true;
      package = pkgs.vimPlugins.coc-nvim;
    };
    enable = true;
    defaultEditor = true;
    package = pkgs.neovim-unwrapped;
    plugins = with pkgs.vimPlugins; [
      yankring
      vim-nix
      { plugin = vim-startify; config = "let g:startify_change_to_vcs_root = 0"; }
    ];
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withNodeJs = false;
    withPython3 = true;
    withRuby = false;
  };
}
