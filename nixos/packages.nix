{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    androidenv.androidPkgs_9_0.platform-tools
    arandr
    bazel
    blueman
    bluez
    calibre
    cargo
    clipmenu
    cloc
    dos2unix
    evince
    feh
    firefox
    fish
    flameshot
    gcc
    gimp
    gitAndTools.gitFull
    gnumake
    gnupg
    graphviz
    guvcview
    gradle
    htop
    i3
    i3blocks
    jetbrains.idea-community
    kotlin
    libreoffice
    lsof
    minicom
    multimc
    neofetch
    nim
    nodejs
    octaveFull
    openjdk11
    openssl
    pavucontrol
    pciutils
    ptask
    python37Full
    python37Packages.pip
    python37Packages.sphinx
    racket
    rdiff_backup
    R
    rstudio
    rofi
    rustc
    rxvt_unicode
    stow
    syncthing
    taskwarrior
    texlive.combined.scheme-full
    texworks
    unity3d
    unzip
    vim
    vscodium
    w3m
    xbanish
    xdotool
    xfce.thunar
    xorg.xrandr
    zip

    (import (fetchTarball "channel:nixos-unstable") {}).android-studio
  ];

  fonts.fonts = with pkgs; [
    fira
    fira-mono
    fira-code
    hermit
    inconsolata
    montserrat
    roboto
    unifont
  ];
}
