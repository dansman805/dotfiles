{ pkgs, ... }:

let
  home-manager = builtins.fetchGit {
    url = "https://github.com/rycee/home-manager.git";
  };
in
{
    home.packages = with pkgs; [
      firefox
      kitty
      rofi
      emacs

      ripgrep
      coreutils
      fd
      clang
    ];
    home.file.".emacs.d/init.el".text = ''
        (load "default.el")
    '';

    # shell = pkgs.fish;
    programs.fish.enable = true;
}
