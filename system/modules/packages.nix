{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    hyprpanel

    discord
    google-chrome
    spotify

    btop
    coreutils
    libnotify
    lshw-gui
    man
    nodejs
    pwgen
    python3
    smile
    tree
    unzip
    usbutils
    zip
  ];
}
