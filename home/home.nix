{ inputs, config, pkgs, lib, osConfig, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users = {
      furcom = {
        imports = [
          ./files/files.nix
          ./modules/modules.nix
          ./programs/programs.nix
          ./services/services.nix
        ];
        home.username = "furcom";
        home.homeDirectory = "/home/furcom";
        home.stateVersion = "24.05";
        home.packages = [];
        home.sessionVariables = {};
        programs.home-manager.enable = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    home-manager
  ];
}
