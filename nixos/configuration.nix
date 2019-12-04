# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, pkgs, ... }:
{
  imports =
    [ 
      ./gui.nix
      ./hardware.nix
      ./packages.nix
      ./wifi.nix
      ./services.nix
    ];

  boot.loader.grub.version = 2;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  nixpkgs.config.allowUnfree = true;
  hardware.enableRedistributableFirmware = true;

  hardware.pulseaudio = {
    enable = true;

    # NixOS allows either a lightweight build (default) or full build of PulseAudio to be installed.
    # Only the full build has Bluetooth support, so it must be selected here.
    package = pkgs.pulseaudioFull;
  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.extraConfig = "
    [General]
    Enable=Source,Sink,Media,Socket
  ";

  # Set your time zone.
  time.timeZone = "America/New_York";

  system.stateVersion = "19.03"; # Did you read the comment?


  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dansman805 = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  users.extraUsers.dansman805 = {
    extraGroups = [ "audio" ];
    shell = pkgs.fish;
  };

  # services.openssh.enable = true;

  environment.variables = {
    EDITOR = "vim";
    ANDROID_HOME = "/home/dansman805/Android/Sdk/";
  };
}
