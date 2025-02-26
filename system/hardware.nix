{ inputs, config, pkgs, ... }:

{
  hardware = {

    bluetooth = { enable = true; powerOnBoot = false; };

    graphics.enable = true;

    sensor = {
      iio.enable = true;
    };

  };
}
