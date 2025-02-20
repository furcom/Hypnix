{ inputs, config, pkgs, ... }:

{
  imports = [
    ./gtk.nix
    ./hyprland.nix
    ./configs.nix
    ./environment.nix
  ];

  home.username = "furcom";
  home.homeDirectory = "/home/furcom";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  home.packages = [];

  home.sessionVariables = {};

  programs.home-manager.enable = true;
}
