{ pkgs, ... }:
{
  services = {

    udisks2 = {
      enable = true;
      package = pkgs.udisks2;
      mountOnMedia = false;
    };

    gvfs = {
      enable = true;
      package = pkgs.gnome.gvfs;
    };
  };

  environment.systemPackages = with pkgs; [
    android-file-transfer
    mtpfs
    udiskie
    usbutils
  ];
}
