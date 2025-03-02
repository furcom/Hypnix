{ pkgs, ... }:
{
  imports = [
    ./modules/boot.nix
    ./modules/fprintd/fprintd.nix
    ./modules/gtk.nix
    ./modules/hardware-configuration.nix
    ./modules/hardware.nix
    ./modules/locale.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/packages.nix
    ./modules/programs.nix
    ./modules/security.nix
    ./modules/services.nix
    ./modules/users.nix
    ./modules/xdg.nix
  ];
  system.stateVersion = "24.11";
}
