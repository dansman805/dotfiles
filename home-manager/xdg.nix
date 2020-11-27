{ pkgs, ... }:

{ 
  xdg = {
    enable = true;

    configFile = {
      "doom" = {
        source = "/home/dansman805/dotfiles/doom";
        recursive = true;
      };
    };
  };
}
