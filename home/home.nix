{ inputs, pkgs, ... }:
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  environment.systemPackages = with pkgs; [
    home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users = {

      furcom = {

        imports = [
          ./modules/hypr/hypr.nix
          ./modules/wlogout/wlogout.nix
          ./modules/kitty.nix
          ./modules/rofi.nix
          ./modules/fusuma.nix
          ./modules/ssh.nix
          ./modules/environment.nix
          ./modules/git.nix
          ./modules/gtk.nix
          ./modules/shell/shell.nix
        ];

        home = {
          username = "furcom";
          homeDirectory = "/home/furcom";
          stateVersion = "24.05";
          packages = [];
          sessionVariables = {};
          file = {
            ".config/fastfetch/nixos_logo" = { source = ./files/fastfetch/nixos_logo; };
            ".config/streamdeck-ui" = { source = ./files/streamdeck-ui; recursive = true; };
            ".config/nvim" = { source = ./files/nvim; recursive = true; };
            ".config/wallust" = { source = ./files/wallust; recursive = true; };
          };
        };

      };
    };
  };
}
