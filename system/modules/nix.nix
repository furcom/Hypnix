{ lib, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes"  ];

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [ "discord" ];
  };

  environment.systemPackages = with pkgs; [
    nix-prefetch-git
    pkg-config
  ];

}
