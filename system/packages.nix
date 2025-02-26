{ inputs, config, pkgs, lib, ... }:


{
  environment.systemPackages = with pkgs; [

    # GTK
    glib
    gtkmm4
    gtk4-layer-shell
    libadwaita
    nemo-with-extensions
    nwg-look

    #ags
    #dart-sass
    #gpu-screen-recorder-gtk

    #fprintd
    #gvfs
    #gtk3
    #gtk4
    #libfprint-2-tod1-vfs0090
    #networkmanager
    #udev
    #upower
    #wireplumber
    #cmake
    #cpio
    #gnumake
    #meson
    #ninja
    #ripgrep
    #sudo
    #udis86
    #gcc

    # furcom
    bitwarden-desktop
    discord
    firefox
    google-chrome
    qalculate-gtk
    spotify

    # Hypnix
    greetd.greetd
    oh-my-posh
    rofi-wayland
    sysmenu
    wallust
    wlogout
    waypaper

    # Hyprland
    cliphist
    hyprcursor
    hypridle
    hypridle
    hyprpanel
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprshot
    hyprsunset
    hyprwayland-scanner
    iio-sensor-proxy
    xdg-utils
    wayland-scanner
    wl-clipboard
    wl-clip-persist
    wlr-protocols

    # Terminal
    kitty
    eza
    fastfetch
    fzf
    zoxide

    # Basics
    less
    btop
    coreutils
    htop
    libnotify
    man
    nodejs
    plymouth
    polkit
    pwgen
    python3
    smile
    tree
    vim
    zip
    unzip

    # Nix
    nix-prefetch-git
    pkg-config

    # Hardware
    android-file-transfer
    #brightnessctl
    #bluetui
    #bluez
    #bluez-tools
    libinput
    intel-media-driver
    mtpfs
    pamixer
    pavucontrol
    power-profiles-daemon

    # Networking
    curl
    dnsmasq
    dnsutils
    git
    cifs-utils
    inetutils
    iputils
    nmap
    netcat-gnu
    openssh
    samba
    tcpdump
    wget
    whois
    wireguard-tools
  ];
}
