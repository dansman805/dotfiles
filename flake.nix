{
  description = "dansman805's NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-20.03";
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.dansman805-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./nixos/configuration.nix
        ./nixos/dansman805-desktop.nix
      ];
    };
  };
}
