{ pkgs, ... }:

let
  home-manager = builtins.fetchGit {
    url = "https://github.com/rycee/home-manager.git";
  };
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];
  
  home-manager.users.dansman805 = {

  };
}
