{ lib, pkgs, ... }:
{
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
  nixpkgs = {
    config = {
      allowBroken = true;
      allowUnfree = true; 
    };
  };
  environment.systemPackages = with pkgs; [
    nix-prefetch-git
    pkg-config
  ];
}
