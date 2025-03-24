#!/bin/bash 

echo -e "\n=== System Update ==="
yay -Syyu

echo -e "\nClearing pacman cache"
pacman_cache_space_used="$(du -sh /var/cache/pacman/pkg/ 2>/dev/null)"
paccache -r 
echo "Space saved: $pacman_cache_space_used" 

echo -e "\nRemoving orphan packages"
yay -Qdtq | yay -Rns -

echo "Clearing ~/.cache"
home_cache_used="$(du -sh ~/.cache ~/.var/app/*/cache/* 2>/dev/null)"

rm -rf ~/.cache/ 
rm -rf ~/.var/app/*/cache/
echo "Spaced saved: $home_cache_used"

echo "Clearing system logs"
journalctl --vacuum-time=7d

echo -e "\nRunning Flatpak repair..."

if command -v flatpak &> /dev/null; then
    flatpak repair --user
    [ "$EUID" -eq 0 ] && flatpak repair --system
else
    echo "Flatpak not installed - skipping"
fi

echo -e "\n=== Cleanup Complete! ===\n"
