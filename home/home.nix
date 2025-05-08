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
          ./modules/cursor.nix
          ./modules/environment.nix
          ./modules/fusuma.nix
          ./modules/git.nix
          ./modules/gpg.nix
          ./modules/gtk.nix
          ./modules/hypr/hypr.nix
          ./modules/kitty.nix
          ./modules/rofi.nix
          ./modules/shell/shell.nix
          ./modules/ssh.nix
          ./modules/wlogout/wlogout.nix
          ./modules/yazi.nix
        ];

        home = {
          username = "furcom";
          homeDirectory = "/home/furcom";
          stateVersion = "24.05";
          packages = [ pkgs.nwg-look ];
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
