{ inputs, config, pkgs, lib, ... }:


{
  environment.systemPackages = with pkgs; [

    fprintd
    #libfprint-2-tod1-vfs0090
    #udev

    nix-prefetch-git
    gnumake

    bibata-cursors
    material-black-colors

    brightnessctl
    btop
    cliphist
    discord
    dbus
    eza
    fastfetch
    fzf
    htop
    gpu-screen-recorder-gtk
    greetd.greetd

    hyprcursor
    hypridle
    hyprpaper
    hyprpicker
    hyprshot
    hyprsunset
    hyprpolkitagent
    iio-sensor-proxy
    kitty

    hyprpanel
    #ags
    #libgtop
    #dart-sass
    #gvfs
    #upower
    #bluez
    #bluez-tools
    #bluetui
    #gtk3
    #gtk4
    #libnotify
    #networkmanager
    #wireplumber

    libadwaita

    nemo-with-extensions

    ripgrep
    nodejs

    nwg-look
    oh-my-posh
    power-profiles-daemon
    rofi-wayland
    smile
    wallust
    wlogout
    waypaper
    wget
    wl-clipboard
    wl-clip-persist
    zoxide

    android-file-transfer
    bitwarden-desktop
    cifs-utils
    coreutils
    curl
    dnsmasq
    dnsutils
    firefox
    gcc
    git
    glib
    google-chrome
    inetutils
    intel-media-driver
    iputils
    less
    man
    mtpfs
    nmap
    netcat-gnu
    openssh
    pamixer
    pavucontrol
    plymouth
    polkit
    pwgen
    qalculate-gtk
    samba
    spotify
    sudo
    tcpdump
    tree
    vim
    whois
    wireguard-tools
    xdg-utils
    zip
    unzip

  ];
}
