{ pkgs, ... }:

{
  imports = [ ./common.nix ];

  xdg = {
    enable = true;

    configFile = {
      "doom" = {
        source = ../doom;
        recursive = true;
      };

      "i3/config".source = ../i3/config;

      "git" = {
        source = ../git;
        recursive = true;
      };

      "fish" = {
        source = ../fish;
        recursive = true;
      };

      "nixpkgs/config.nix".text = "{ allowUnfree = true; }";
    };
  };
}
