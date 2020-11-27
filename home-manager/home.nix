{ pkgs, ... }:

let
  home-manager = builtins.fetchGit {
    url = "https://github.com/rycee/home-manager.git";
  };
in
{
  imports = [
    ./xdg.nix
  ];

  home.packages = with pkgs; [
    firefox
    kitty
    rofi

    ripgrep
    coreutils
    fd
    clang
  ];
  
  # shell = pkgs.fish;
  programs.fish.enable = true;

  programs.emacs.enable = true;
}
