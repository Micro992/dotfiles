#!/bin/bash 
apps=(
    "sh.ppy.osu"
    "org.kde.kate"
    "io.ente.auth"
    "org.kde.okular"
    "org.gimp.GIMP"
    "org.kde.gwenview"
    "net.lutris.Lutris"
    "app.zen_browser.zen"
    "org.telegram.desktop"
    "com.obsproject.Studio"
    "com.discordapp.Discord"
    "com.usebottles.bottles"
    "com.github.tchx84.Flatseal"
    "dev.bragefuglseth.Keypunch"
    "com.github.KRTirtho.Spotube"
    "page.codeberg.libre_menu_editor.LibreMenuEditor"
)


ask() {
      read -r -p "$1 (Y/n): " answer
      [ -z "$answer" ] || [ "$answer" == y ]
}

create_telegram_symlink() {
    local symlink_target="$HOME/Downloads/TelegramDesktop"
    local source_path="$HOME/.var/app/org.telegram.desktop/data/TelegramDesktop/tdata/temp_data"

    if [ -e "$symlink_target" ]; then
        echo "Symlink already exists at: $symlink_target"
    else
        echo "Creating symlink for Telegram..."
        ln -sv "$source_path" "$symlink_target"
    fi
}

echo "Available apps:"
for index in "${!apps[@]}"; do
    printf "%2d) %s\n" "$index" "${apps[index]}"
done
echo ""

if ask "Install all apps?"; then
      echo -e "\nInstalling all applications from Flathub..."
      flatpak install --user -y flathub "${apps[@]}"
    
else
 echo -e "\nSelect app to install:"
   for app in "${apps[@]}"; do
        if  ask "Install $app?"; then
             flatpak install --user -y flathub "$app"                 
        
              # Symlink for Telegram 
              if [[ "$app" == "org.telegram.desktop" ]]; then
                  if ask "Create Telegram Desktop symlink to Downloads?"; then
                      create_telegram_symlink
                  fi
              fi
        fi
    done
fi
echo -e "\nInstolation completed!"
