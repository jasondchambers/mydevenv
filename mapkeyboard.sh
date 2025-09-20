#!/usr/bin/env sh

configure_karabiner() {
  local karabiner_config_directory="${HOME}/.config/karabiner"
  echo "Configuring Karabiner Elements"
  if [ -d "$karabiner_config_directory" ]; then
    echo "Karabiner Elements has been installed"
    local karabiner_config_file="${karabiner_config_directory}/karabiner.json"
    if [ -e "$karabiner_config_file" ]; then
      echo "Found existing Karabiner Elements config file"
      if [ ! -L "$karabiner_config_file" ]; then
        echo "Found existing Karabiner Elements config file - backing it up"
        mv $karabiner_config_file{,.bak}
      else
        echo "Karabiner Elements config is linked - removing it"
        rm -f $karabiner_config_file
      fi
    fi
    echo "Pointing Karabiner Elements to this configuration"
    ln -s "$PWD/karabiner.json" $karabiner_config_file
  else
    echo "Karabiner Elements has not been installed"
  fi
}

fix_macos_keyboard_mapping_for_razer_ornata() {
  # Let's fix the mapping for the Razer Ornata keyboard
  # Weirdly, the Option and Command keys are flipped
  # so, flip them back
  configure_karabiner
}

main() {
  if [ "$(uname)" = "Darwin" ]; then
    echo "Running on macOS"
    fix_macos_keyboard_mapping_for_razer_ornata
  fi
}

main
