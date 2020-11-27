{ pkgs, ... }:

{
  imports = [
    ./xdg.nix
    ./kitty.nix
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    # GUI applications
    firefox
    discord
    google-chrome
    pavucontrol

    # GUI utilities
    flameshot
    rofi
    i3status-rust

    # Games
    minecraft
    multimc

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
    nixfmt

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
