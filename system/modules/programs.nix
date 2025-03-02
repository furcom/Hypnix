{ pkgs, ... }:

{
  programs = {

    iio-hyprland = { enable = true; package = pkgs.iio-hyprland; };

    mtr = { enable = true; package = pkgs.mtr; };

    #gnupg.agent = { enable = true; enableSSHSupport = true; };

    neovim = { enable = true; defaultEditor = true; package = pkgs.neovim-unwrapped; };

    xwayland = { enable = true; package = pkgs.xwayland; };

    firefox = { enable = true; package = pkgs.firefox; };
     
    less = { enable = true; package = pkgs.less; };

    htop = { enable = true; package = pkgs.htop; };

    vim = { enable = true; package = pkgs.vim; defaultEditor = false; };

    dconf = { enable = true; };

  };
}
