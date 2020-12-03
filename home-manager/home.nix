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
    xfce.thunar

    # GUI utilities
    flameshot
    rofi
    i3status-rust
    feh
    copyq
    scrcpy
    fzf

    # Games
    minecraft
    multimc

    # Command line utilities
    ripgrep fd
    coreutils
    tree jq trash-cli
    tealdeer
    ffmpeg imagemagick pandoc
    haskellPackages.FractalArt
    zip unzip p7zip
    git-lfs
    ispell

    # Command line fun
    fortune
    cowsay

    # Compilers/programming language stuff
    clang
    gnumake libtool cmake
    gradle openjdk
    python38
    nixfmt
    zig

    # IDEs
    jetbrains.idea-community
    android-studio

    # Fonts
    fira
    fira-code
    fira-mono
  ];
  
  programs.emacs.enable = true;
  services.emacs.enable = true;
  services.emacs.client.enable = true;

  fonts.fontconfig.enable = true;
}
