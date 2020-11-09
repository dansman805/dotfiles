{pkgs, ...}:

{
  home.packages = with pkgs; [
    # GUI tools
    firefox kitty
    
    # General-purpose CLI tools
    wget

    # Text editors
    vim
  ];

  programs.git = {
    enable = true;
    userName = "dansman805";
    userEmail = "dansman805@gmail.com";
  };

  programs.emacs = {
    enable = true;
  };
}

