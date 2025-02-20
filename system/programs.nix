{ inputs, config, pkgs, ... }:

{
  programs = {

    zsh = { enable = true; };

    dconf = { enable = true; };

    mtr.enable = true;

    gnupg.agent = { enable = true; enableSSHSupport = true; };

    xwayland = { enable = true; package = pkgs.xwayland; };

    neovim = { enable = true; defaultEditor = true; };

    hyprland = {
      enable = true;
      package = pkgs.hyprland;
      portalPackage = pkgs.xdg-desktop-portal-hyprland;
      xwayland.enable = true;
      withUWSM = true;
    };

    iio-hyprland = { enable = true; package = pkgs.iio-hyprland; };

    hyprlock = { enable = true; };

    uwsm.enable = true;

  };
}
