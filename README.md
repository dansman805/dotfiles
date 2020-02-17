# Install
```bash
git clone https://github.com/dansman805/dotfiles
cd dotfiles

sudo stow nixos -t /etc/nixos
stow emacs -t ~/.emacs.d/
stow i3 -t ~/.config/i3
stow git -t ~/.config/git
stow fish -t ~/.config/fish
stow kitty -t ~/.config/kitty
stow rofi -t ~/.config/rofi
stow xresources

# if on existing install
sudo -i nixos-rebuild switch
# if on new install chroot into mounted disk before doing this then do 
sudo nixos-install
# on a fresh shell
```

# TODO:
write a script to automate this
