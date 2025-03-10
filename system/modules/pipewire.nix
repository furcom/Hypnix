{ ... }:
{
  services = {
    pipewire = {
      enable = true;
      audio.enable = true;
      wireplumber.enable = true;
      systemWide = false; # systemWide enabled not recommended
      pulse.enable = false;
      jack.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
    };
    pulseaudio.enable = false;
  };
}
