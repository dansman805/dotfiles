{ config, lib, pkgs, ... }:
{
  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usbhid" "usb_storage" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/7f2e23e6-85ff-460a-81f8-2a14e3726b87";
      fsType = "ext4";
    };

  fileSystems."/boot/" =
    { device = "/dev/disk/by-uuid/7ADE16D4DE168891";
      fsType = "ntfs";
      options = [ "rw" ];
    };

  fileSystems."/mnt/backup-drive" = 
    {
      device = "/dev/disk/by-label/Backup";
      fsType = "ext4";
      options = [ "nofail" ];
    };

  nix.maxJobs = lib.mkDefault 12;
}