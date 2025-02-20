{ inputs, config, pkgs, ... }:

{
  security = {
    polkit.enable = true;
    rtkit.enable = true;
  };

}
