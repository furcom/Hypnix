{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bitwarden-desktop
    qalculate-gtk
  ];
}
