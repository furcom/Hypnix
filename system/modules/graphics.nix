{ pkgs, ... }:
{
  hardware = {
    graphics.enable = true;
  };
  environment.systemPackages = with pkgs; [
    brightnessctl
    intel-media-driver
  ];
}
