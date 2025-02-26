{ inputs, config, pkgs, lib, ... }:

{
  services = {
    fprintd = {
      enable = true;
      #tod = {
        #enable = true;
        #driver = pkgs.libfprint-2-tod1-vfs0090;
      #};
      package = pkgs.fprintd;
    };
  };
}
