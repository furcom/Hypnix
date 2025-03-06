{ ... }:
{
  imports = [
    ./boot.nix
    ./gtk.nix
    ./locale.nix
    ./nix.nix
    ./security.nix
    ./users.nix
    ./xdg.nix
    ./xserver.nix
    ./xwayland.nix
  ];
}
