{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [ playerctl ];

  services = {
    pipewire = {
      audio.enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      enable = true;
      jack.enable = true;
      pulse.enable = false;
      systemWide = false; # systemWide enabled not recommended
      wireplumber = {
        enable = true;
        package = pkgs.wireplumber;
        extraLv2Packages = [ pkgs.lsp-plugins ];
      };
      package = pkgs.pipewire;
    };
    pulseaudio.enable = false;
  };

}
