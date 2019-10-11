# Install
```bash
git clone https://github.com/dansman805/dotfiles
cd dotfiles

sudo stow nixos -t /etc/nixos
stow i3 ~/.config/i3
stow git ~/.config/git
stow fish ~/.config/fish
stow rofi ~/.config/rofi
stow xresources

# if on existing install
sudo -i nixos-rebuild switch
# if on new install chroot into mounted disk before doing this then do 
sudo nixos-install
# on a fresh shell
```

# TODO:
write a script to automate this
