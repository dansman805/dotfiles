{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    arandr
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
    pavucontrol
    pciutils
    python37Full
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
