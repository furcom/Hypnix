{ inputs, config, pkgs, lib, ... }:

{
  imports = [
    ./gtk.nix
    ./configs.nix
    ./environment.nix
    ./hyprland/hyprland.nix
  ];
  home.username = "furcom";
  home.homeDirectory = "/home/furcom";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  home.packages = [];
  home.sessionVariables = {};
  programs.home-manager.enable = true;
}
