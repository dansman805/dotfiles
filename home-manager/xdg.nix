{ pkgs, ... }:

{ 
  xdg = {
    enable = true;

    configFile = {
      "doom" = {
        source = "/home/dansman805/dotfiles/doom";
        recursive = true;
      };
      "i3/config".source = /home/dansman805/dotfiles/i3/config;
    };
  };
}
