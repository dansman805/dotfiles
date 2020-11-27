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

    # Fonts
    fira
    fira-code
    fira-mono
  ];
  
  # shell = pkgs.fish;
  programs.fish.enable = true;

  programs.emacs.enable = true;
  services.emacs.enable = true;

  fonts.fontconfig.enable = true;
}
