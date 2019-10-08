{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    androidenv.androidPkgs_9_0.platform-tools
    arandr
    blueman
    bluez
    cargo
    cloc
    feh
    firefox
    fish
    flameshot
    gcc
    gimp
    gitAndTools.gitFull
    gnupg
    guvcview
    gradle
    htop
    i3
    jetbrains.idea-community
    kotlin
    libreoffice
    lsof
    minicom
    minecraft
    multimc
    neofetch
    nim
    openjdk11
    pavucontrol
    pciutils
    python37Full
    python37Packages.pip
    python37Packages.sphinx
    racket
    rdiff_backup
    rxvt_unicode
    stow
    syncthing
    texlive.combined.scheme-full
    texworks
    unzip
    vim
    vscodium
    w3m
    xbanish
    xfce.thunar
    xorg.xrandr
    zip

    (import (fetchTarball "channel:nixos-unstable") {}).android-studio
  ];

  fonts.fonts = with pkgs; [
    fira
    hermit
    unifont
  ];
}
