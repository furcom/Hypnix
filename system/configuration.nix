{ inputs, config, pkgs, ... }:

{
  imports = [
    ./boot.nix
    ./environment.nix
    #./fprintd.nix
    ./gtk.nix
    ./hardware-configuration.nix
    ./hardware.nix
    ./home-manager.nix
    ./locale.nix
    ./networking.nix
    ./nix.nix
    ./packages.nix
    ./programs.nix
    ./security.nix
    ./services.nix
    ./systemd.nix
    ./users.nix
    ./xdg.nix
  ];

  system.stateVersion = "24.11";
}
