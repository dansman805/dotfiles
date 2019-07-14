{ config, pkgs, ... }:
{ services.xserver = {
    enable = true;
    layout = "us";    
    displayManager.sddm.enable = true;
    windowManager.i3.enable = true;
    #xrandrHeads = [{ output = "DP-1"; monitorConfig = ''DisplaySize 1600 1200'';} {output = "DVI-D-1"; monitorConfig = ''DisplaySize 1920 1080''; primary = true;}];
    # this no work idiot
  };

  sound.enable = true;
  hardware.pulseaudio.enable = true;
}
