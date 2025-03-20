# Micro's Sucks Dotfiles 🐀

My first (probably terrible) Hyprland rice.

## Showcase

### Screenshot
![Wow](https://github.com/Micro992/dotfiles/blob/main/showcase/2025-01-22-194027_hyprshot.png)

### Videos
<video src="https://github.com/user-attachments/assets/adda7d7a-988b-4430-a978-2ee981d3761c" width="720" height="352" loop></video>

<video src="https://github.com/user-attachments/assets/7a022027-b548-4b89-92db-2cb1c6b56423" width="720" height="352" loop></video>

---

## Installation for Arch Linux

### Step 1: Install Required Packages

#### Using Pacman:
```bash
sudo pacman -S hyprland hyprpaper hyprlock hypridle waybar networkmanager network-manager-applet \
  sddm rofi-wayland btop evince eza blueman fastfetch keepassxc kitty brightnessctl \
  imv mpv git fzf nwg-look obsidian pavucontrol vim stow tldr swaync nemo \
  yazi zoxide vlc rclone ncdu bat fd acpi ripgrep
```

#### Using Yay:
```bash
yay -S brave-bin nvim-lazy sddm-catppuccin-git wlogout ani-cli cava hyprshot
```
#### Using Flatpak:
```bash
chmod +x install_apps.sh
./install_apps.sh

```

### Step 2: Clone the Repository
```bash
git clone https://github.com/Micro992/dotfiles.git
cd dotfiles
stow --adopt . #(Use with care!)
```

### Step 3: Install Fonts
```bash
cd dotfiles
chmod +x install_fonts.sh
./install_fonts.sh
```

### Step 4: Install Icons and Themes
```bash
cd ~/dotfiles/.icons
tar -xvzf .icons.tar.gz -C ~/dotfiles/
```

After installing the icons and themes, use **nwg-look** to apply your preferred themes and icons. :3

---

## Original Work
I don’t know... everything is stolen, even the file names. Please don’t arrest me. :(

For more information, [click here](https://youtu.be/dQw4w9WgXcQ?si=ZrDJTd_g6KlbpkYz).

