{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "usb_storage" "sd_mod" "sr_mod" "rtsx_pci_sdmmc" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/0d5bb73e-9ec9-420f-a36b-374923267249";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/975C-BEE4";
      fsType = "vfat";
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/3e6fc11d-f22a-4b50-857c-3b949faf3a66";
      fsType = "ext4";
    };

  swapDevices = [ ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  
  boot.loader.systemd-boot.enable = true;
	
  networking.hostName = "dansman805-laptop"; # Define your hostname.

  time.timeZone = "America/New_York";

  # Setup nvidia card with prime sync
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.prime = {
    sync.enable = true;

    # Bus ID of NVIDIA GPU
    nvidiaBusId = "PCI:1:0:0";

    # Bus ID of Intel GPU
    intelBusId = "PCI:0:2:0";
  };
  services.xserver.dpi = 96;

  services.xserver.libinput.enable = true;

  # Setup steam
  hardware.opengl.driSupport32Bit = true;
  hardware.opengl.extraPackages32 = with pkgs.pkgsi686Linux; [ libva ];
  hardware.pulseaudio.support32Bit = true;
  programs.steam.enable = true;
}
