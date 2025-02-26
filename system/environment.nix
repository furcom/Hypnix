{ inputs, config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager

    git
    vim
    greetd.greetd
  ];

#  xdg.portal = {
#    enable = true;
#    wlr.enable = true;
#    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
#  };

}
