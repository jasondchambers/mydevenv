#!/usr/bin/env sh

fix_macos_keyboard_mapping_for_razer_ornata() {
  # Let's fix the mapping for the Razer Ornata keyboard
  # Weirdly, the Option and Command keys are flipped
  # so, flip them back

  idVendor="0x1532"
  idProduct="0x21e"

  # Swap Left Command (0x7000000E3) and Left Option (0x7000000E2)
  hidutil property --matching "{\"ProductID\": $idProduct, \"VendorID\": $idVendor}" --set '{
  "UserKeyMapping": [
    {
      "HIDKeyboardModifierMappingSrc": 0x7000000E3,
      "HIDKeyboardModifierMappingDst": 0x7000000E2
    },
    {
      "HIDKeyboardModifierMappingSrc": 0x7000000E2,
      "HIDKeyboardModifierMappingDst": 0x7000000E3
    }
    ]
  }'

  if [ ! -f ~/Library/LaunchAgents/com.user.keyboardremap.plist ]; then
    cp com.user.keyboardremap.plist ~/Library/LaunchAgents
    launchctl load ~/Library/LaunchAgents/com.user.keyboardremap.plist
  else
    echo "LaunchAgent for keyboard remapping has already been installed"
  fi
}

main() {
  if [ "$(uname)" = "Darwin" ]; then
    echo "Running on macOS"
    fix_macos_keyboard_mapping_for_razer_ornata
  fi
}

main
