{ inputs, config, pkgs, lib, osConfig, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users = {
      furcom = {
        imports = [
          ./files/files.nix
          ./modules/environment.nix
          ./modules/fusuma.nix
          ./modules/git.nix
          ./modules/gtk.nix
          ./modules/hypr/hypr.nix
          ./modules/kitty.nix
          ./modules/packages.nix
          ./modules/rofi.nix
          ./modules/shell/shell.nix
          ./modules/ssh.nix
          ./modules/wlogout/wlogout.nix
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
