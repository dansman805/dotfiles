{pkgs, ...}:

{
  home.packages = with pkgs; [
    # GUI tools
    firefox
    
    # General-purpose CLI tools
    wget
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

