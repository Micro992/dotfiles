# My dotfiles!!!!!!

how to setup dotfiles

## first install those packages!

### for i3 
```
sudo pacman -S i3 git stow yazi alacritty neofetch polybar flamshot networkmanager network-manager-applet feh 
```

### for hyprland
```
sudo pacman -S hyprland hyprpaper hyprlock hypridle hyprshot waybar networkmanager network-manager-applet sddm wofi  
```
### optinal

```
sudo pacman -S blueman curl fzf htop imv keepassxc lxappearnce mpv ncdu nm-connection-editor obsidian pavucontrol rclone telegram-desktop tldr tmux tor which yazi nautilus zip zoxide zsh     
```
### for AUR 
```
yay -S swaync wlogout brave-bin cava hyprshot zen-browser-bin visual-studio-code-bin spotube-bin sddm-catppuccin-git archlinux-tweak-tool-git  
```
## Installtion 
````
$ git clone https://github.com/Micro992/dotfiles.git 
$ cd dotfiles
````

then use GNU stow to create symliks
```
$ stow .
```

 - [for more details watch this](https://youtu.be/y6XCebnB9gs?si=qRYYzajmNjlwC0Ov)
