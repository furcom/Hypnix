{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
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
