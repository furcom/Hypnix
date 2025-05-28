{ pkgs, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      enable32Bit = false;
      extraPackages = with pkgs; [
        intel-media-driver
        intel-ocl
        intel-vaapi-driver
      ];
    };
  };
  environment.systemPackages = with pkgs; [
    brightnessctl
  ];
}
