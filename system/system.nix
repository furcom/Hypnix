{ pkgs, ... }:
{
  system.stateVersion = "24.11";

  imports = [
    ./modules/bluetooth.nix
    ./modules/boot.nix
    ./modules/dbus.nix
    ./modules/dconf.nix
    ./modules/firefox.nix
    ./modules/fprintd/fprintd.nix
    ./modules/graphics.nix
    ./modules/greetd.nix
    ./modules/gtk.nix
    ./modules/hardware-configuration.nix
    ./modules/libinput.nix
    ./modules/locale.nix
    ./modules/logind.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/nvim.nix
    ./modules/pipewire.nix
    ./modules/power-profiles-daemon.nix
    ./modules/printing.nix
    ./modules/sensors.nix
    ./modules/upower.nix
    ./modules/users.nix
    ./modules/xdg.nix
    ./modules/xserver.nix
    ./modules/xwayland.nix
  ];

  programs = {

    less = {
      enable = true;
      package = pkgs.less;
    };

    htop = {
      enable = true;
      package = pkgs.htop;
    };

  };

  environment.systemPackages = with pkgs; [
    android-file-transfer
    bitwarden-desktop
    btop
    coreutils
    discord
    google-chrome
    hyprpanel
    hyprpolkitagent
    libnotify
    lshw-gui
    man
    mtpfs
    nodejs
    pwgen
    python3
    qalculate-gtk
    smile
    spotify
    tree
    unzip
    usbutils
    zip
  ];

}
