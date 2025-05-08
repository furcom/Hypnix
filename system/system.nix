{ pkgs, ... }:
{
  system.stateVersion = "24.11";

  imports = [
    ./modules/automount.nix
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
    ./modules/mounts.nix
    ./modules/networking.nix
    ./modules/nix.nix
    ./modules/nvim.nix
    ./modules/pipewire.nix
    ./modules/power-profiles-daemon.nix
    ./modules/printing.nix
    ./modules/security.nix
    ./modules/sensors.nix
    ./modules/ssh.nix
    ./modules/stream-deck.nix
    ./modules/upower.nix
    ./modules/users.nix
    ./modules/vm.nix
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
    android-tools
    bitwarden-desktop
    btop
    cava
    coreutils
    discord
    dislocker
    dmidecode
    google-chrome
    gnome-disk-utility
    hyprpanel
    hyprpolkitagent
    impression
    libnotify
    libmtp
    lshw-gui
    man
    mtpfs
    nautilus
    nodejs
    ntfs3g
    pwgen
    python3
    qalculate-gtk
    redact
    smile
    spotify
    tree
    unzip
    ventoy-full-gtk
    zip
  ];

}
