{pkgs, ...}:


let
  doom-emacs = pkgs.callPackage (builtins.fetchTarball {
    url = https://github.com/vlaci/nix-doom-emacs/archive/master.tar.gz;
  }) {
    doomPrivateDir = ~/dotfiles/doom/.config/doom;
    # Directory containing your config.el init.el                             # and packages.el files
  };
in {
  home.packages = with pkgs; [
    # GUI tools
    firefox kitty
    
    # General-purpose CLI tools
    wget ripgrep coreutils fd

    # Text editors
    doom-emacs vim
	 
    # Language-specific tools
    clang
  ];

  programs.git = {
    enable = true;
    userName = "dansman805";
    userEmail = "dansman805@gmail.com";
  };																																																						

  home.file.".emacs.d/init.el".text = ''
      (load "default.el")
  '';
}

