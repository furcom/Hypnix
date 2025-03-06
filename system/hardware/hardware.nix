{ pkgs, ... }:
{
  imports = [
    ./fprintd/fprintd.nix
    ./bluetooth.nix
    ./graphics.nix
    ./hardware-configuration.nix
    ./libinput.nix
    ./networking.nix
    ./pipewire.nix
    ./power-profiles-daemon.nix
    ./printing.nix
    ./sensors.nix
    ./upower.nix
  ];

  environment.systemPackages = with pkgs; [
    android-file-transfer
    intel-media-driver
    mtpfs
  ];
}
