{ pkgs, ... }:

{
  imports = [
    ./kitty.nix
  ];

  # nixpkgs.config.allowUnfree = true;

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
    gitAndTools.gh git-lfs
    ispell
    graphviz
    appimage-run
    xclip
    units

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
    fira fira-code fira-mono
    montserrat
  ];
  
  programs.emacs.enable = true;
  services.emacs.enable = true;
  services.emacs.client.enable = true;

  services.dunst.enable = true;
  services.dunst.settings = {
      global = {
          transparency = 10;
          geometry = "300x40-30+20";

          font = "Monsterrat 12";
      };
  };

  fonts.fontconfig.enable = true;
}
