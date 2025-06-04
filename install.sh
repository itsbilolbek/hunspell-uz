#!/bin/bash
# This script installs the Uzbek Latin Hunspell dictionary on different platforms.

# Detect the platform
OS="$(uname)"

case "$OS" in 
  'Linux')
    echo "🔧 Copying to /usr/share/hunspell (requires sudo)"
    sudo cp ./uz-lat.dic /usr/share/hunspell/uz_UZ.dic
    sudo cp ./uz-lat.aff /usr/share/hunspell/uz_UZ.aff
    echo "✅ Installed on Linux"
    ;;

  'Darwin') 
    echo "🔧 Copying to ~/Library/Spelling"
    mkdir -p ~/Library/Spelling
    cp ./uz-lat.dic ~/Library/Spelling/uz_UZ.dic
    cp ./uz-lat.aff ~/Library/Spelling/uz_UZ.aff
    echo "✅ Installed on macOS"
    ;;

  'FreeBSD')
    echo "Detected FreeBSD (not supported yet)"
    ;;

  'WindowsNT' | 'MINGW'* | 'CYGWIN'*)
    echo "Detected Windows (not supported by this script)"
    ;;

  *)
    echo "Unknown OS: $OS"
    ;;
esac
