# Micro's sucks dotfiles 
that is my horrible dotfiles and it's my first rice.

## Showcase 


### ![wow](https://github.com/Micro992/dotfiles/blob/main/wallpapers/cute-girl.pnghttps://github.com/Micro992/dotfiles/blob/main/showcase/2025-01-22-194027_hyprshot.png)

### ![wow](https://github.com/Micro992/dotfiles/blob/main/wallpapers/cute-girl.pnghttps://github.com/Micro992/dotfiles/blob/main/showcase/hyprland-showcase.mp4)


### ![wow](https://github.com/Micro992/dotfiles/blob/main/wallpapers/cute-girl.pnghttps://github.com/Micro992/dotfiles/blob/main/showcase/my-sucks-rice.mp4)


# Installation for Arch linux

1. First install these packages. *(some are optional)*

For pacman:
```bash
sudo pacman -S hyprland hyprpaper hyprlock hypridle hyprshot waybar networkmanager network-manager-applet sddm rofi-wayland
brightnessctl btop evince eza discord blueman fastfetch keepassxc kitty lxappearance imv mpv nvim git
fzf nwg-look obsidian pavucontrol vim power-profiles-daemon stow steam tldr swaync timeshift yazi zoxide vlc rclone ncdu kdenlive telegram-desktop bat chafa fd acpi

```
For yay:
```bash
yay -S brave-bin nvim-lazy sddm-catppuccin-git wlogout ani-cli
cava unimatrix-git visual-studio-code-bin spotube-bin   

```
2. Clone the repo

```bash
git clone https://github.com/Micro992/dotfiles.git
cd dotfiles
stow .
```

3. Install the fonts 
```bash 
cd dotfiles
chmod +x install_fonts.sh
./install_fonts.sh
```

4. Install icons and themes
```bash
cd ~/dotfiles/.icons
tar -xvzf .icons.tar.gz -C ~/dotfiles/
```
After installing the icons and the themes, You should use nwg-look And lxappearance to chnage the thmese and iocns you like :3

## Original work

i dont know, everything is steal even the files name,
please don't arrest me :(

For more information [click](https://youtu.be/dQw4w9WgXcQ?si=ZrDJTd_g6KlbpkYz)