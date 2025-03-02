{ pkgs, ... }:

{
  hardware = {

    bluetooth = { enable = true; powerOnBoot = false; };

    graphics.enable = true;

    sensor = {
      iio.enable = true;
    };

  };

  environment.systemPackages = with pkgs; [
    android-file-transfer
    brightnessctl
    bluetui
    bluez
    bluez-tools
    libinput
    intel-media-driver
    mtpfs
    pamixer
    pavucontrol
    power-profiles-daemon
    upower
  ];
}
