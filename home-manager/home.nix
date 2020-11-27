{ pkgs, ... }:

let
  home-manager = builtins.fetchGit {
    url = "https://github.com/rycee/home-manager.git";
  };
in
{
  imports = [
    ./xdg.nix
    ./fish.nix
    ./kitty.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # GUI tools
    firefox
    discord
    google-chrome

    # GUI Utilities
    flameshot
    rofi
    i3status-rust

    # Command line utilities
    ripgrep
    coreutils
    fd
    tree
    jq
    trash-cli
    tealdeer
    ffmpeg
    imagemagick

    # Command line fun
    fortune
    cowsay

    # Compilers/programming language stuff
    clang
    gnumake libtool cmake
    gradle openjdk

    # Fonts
    fira
    fira-code
    fira-mono
  ];
  
  programs.emacs.enable = true;
  services.emacs.enable = true;

  fonts.fontconfig.enable = true;
}
