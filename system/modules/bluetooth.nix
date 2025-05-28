{ pkgs, ... }:
{
  hardware = {
    bluetooth = {
      enable = true;
      powerOnBoot = false;
      package = pkgs.bluez;
      hsphfpd.enable = false; # <-- Disable when using Wireplumber
    };
  };
  environment.systemPackages = with pkgs; [
    bluetui
  ];
}
