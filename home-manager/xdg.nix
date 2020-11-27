{ pkgs, ... }:

let
  dotfilesDir = /home/dansman805/dotfiles;
in
{ 
  xdg = {
    enable = true;

    configFile = {
      "doom" = {
        source = dotfilesDir + "/doom";
        recursive = true;
      };

      "i3/config".source = dotfilesDir + "/i3/config";

      "git" = {
        source = dotfilesDir + "/git/";
        recursive = true;
      };
    };
  };
}
