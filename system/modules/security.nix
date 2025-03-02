{ pkgs, ... }:

{
  security = {
    polkit.enable = true;
    rtkit.enable = true;
  };

  environment.systemPackages = with pkgs; [
    polkit
  ];
}
