#!/usr/bin/env bash

bat --list-themes | grep -q Catppuccin
if [ "$?" -eq "0" ]; then
  echo "Catppuccin found!"
else
   mkdir -p "$(bat --config-dir)/themes"
   wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Latte.tmTheme
   wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Frappe.tmTheme
   wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Macchiato.tmTheme
   wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme
   bat cache --build
fi

