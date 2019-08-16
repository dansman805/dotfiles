{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    arandr
    cloc
    feh
    firefox
    fish
    flameshot
    gcc
    gradle
    gitAndTools.gitFull
    htop
    i3
    jetbrains.idea-community
    kotlin
    lsof
    neofetch
    nim
    openjdk11
    pavucontrol
    pciutils
    python37Full
    python37Packages.pip
    racket
    rdiff_backup
    rxvt_unicode
    stow
    texlive.combined.scheme-full
    texworks
    unzip
    vim
    vscodium
    w3m
    xfce.thunar
    xorg.xrandr
    zip
  ];

  fonts.fonts = with pkgs; [
    fira
    hermit
    unifont
  ];
}
