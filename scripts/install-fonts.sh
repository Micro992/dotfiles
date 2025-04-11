#!/bin/bash

# List of font names
fonts=(
    "noto-fonts"
    "noto-fonts-emoji"
    "ttf-meslo-nerd"
    "ttf-fira-sans"
    "ttf-roboto"
    "ttf-liberation"
    "ttf-fira-code"
    "ttf-font-awesome"
)

# Install fonts using pacman
for font in "${fonts[@]}"; do
    if pacman -Ss "^$font" > /dev/null 2>&1; then
        sudo pacman -S --needed --noconfirm "$font"
    else
        echo "Font $font not found in pacman repositories."
    fi
done

# Install AUR fonts using yay
aur_fonts=(
    "ttf-jetbrains-mono"
    "ttf-ms-fonts"
)

for aur_font in "${aur_fonts[@]}"; do
    if yay -Ss "^$aur_font" > /dev/null 2>&1; then
        yay -S --needed "$aur_font"
    else
        echo "Font $aur_font not found in AUR."
    fi
done


read -p "Do You Want to Build The Font Cache? (Y/n) " answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
    fc-cache -fv
    echo "You installed and updated the fonts successfully"
    
elif [[ "$answer" =~ ^[Nn]$ ]]; then
  :

else 
  fc-cache -fv
  echo "You installed and updated the fonts successfully"
fi

