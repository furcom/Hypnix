{ pkgs, ... }:
{
  system.stateVersion = "24.11";

  imports = [
    ./modules/automount.nix
    ./modules/bluetooth.nix
    ./modules/boot.nix
    ./modules/dbus.nix
    ./modules/dconf.nix
    ./modules/fprintd/fprintd.nix
    ./modules/graphics.nix
    ./modules/gtk.nix
    ./modules/greetd.nix
    ./modules/hardware-configuration.nix
    ./modules/hyprland.nix
    ./modules/locale.nix
    ./modules/logind.nix
    ./modules/mounts.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/pipewire.nix
    ./modules/power-profiles-daemon.nix
    ./modules/printing.nix
    ./modules/security.nix
    ./modules/sensors.nix
    ./modules/ssh.nix
    ./modules/steam.nix
    ./modules/stream-deck.nix
    ./modules/upower.nix
    ./modules/uwsm.nix
    ./modules/users.nix
    ./modules/vm.nix
  ];

  programs = {

    less = {
      enable = true;
      package = pkgs.less;
    };

  };

  environment.systemPackages = with pkgs; [
    android-tools
    bc
    coreutils
    dmidecode
    man
    tree
    unzip
    zip

    heimdall-gui
    heimdall
  ];

}
