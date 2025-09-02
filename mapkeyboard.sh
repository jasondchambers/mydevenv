#!/usr/bin/env sh

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
