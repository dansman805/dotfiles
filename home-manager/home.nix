{ pkgs, ... }:

let
  home-manager = builtins.fetchGit {
    url = "https://github.com/rycee/home-manager.git";
  };
in
{
  xdg.enable = true;

  home.packages = with pkgs; [
    firefox
    kitty
    rofi
    emacs

    ripgrep
    coreutils
    fd
    clang
  ];

  # shell = pkgs.fish;
  programs.fish.enable = true;
}
