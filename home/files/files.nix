{ ... }:
{
  home.file = {
    ".config/nvim" = { source = ./nvim; recursive = true; };
    ".config/wallust" = { source = ./wallust; recursive = true; };
    ".config/waypaper" = { source = ./waypaper; recursive = true; };
  };
}
