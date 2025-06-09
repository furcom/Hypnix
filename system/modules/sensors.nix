{ pkgs, ... }:
{
  hardware.sensor.iio.enable = true;
  programs.iio-hyprland = {
    enable = true;
    package = pkgs.iio-hyprland;
  };
  services = {
    thermald = {
      debug = false;
      enable = true;
      ignoreCpuidCheck = false;
      package = pkgs.thermald;
    };
  };
}
