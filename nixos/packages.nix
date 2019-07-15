{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    arandr
    clipmenu
    cloc
    firefox
    fish
    flameshot
    gcc
    gradle
    gitAndTools.gitFull
    i3
    jetbrains.idea-community
    lsof
    neofetch
    nim
    openjdk11
    openscad
    pavucontrol
    pciutils
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
