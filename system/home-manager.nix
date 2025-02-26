{ inputs, config, pkgs, lib, osConfig, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users = {
      furcom = import ../home/home.nix;
    };
  };
}
