#!/usr/bin/env bash

sudo echo "Setting up the system..."

# Make the udontur folder
mkdir -p ~/udontur
mkdir -p ~/udontur/code

# Add the bass preset for easyeffects
mkdir -p ~/.config/easyeffects/output/
cp ./assets/easyeffects/bass.json ~/.config/easyeffects/output/bass.json

# Add the tommorow-night theme for btop
mkdir -p ~/.config/btop/themes/
cp ./assets/btop/themes/tommorow-night.theme ~/.config/btop/themes/tommorow-night.theme

if [ $? -eq 1 ]; then
    echo "There is a error during setup!"
    echo "Please refer to the above error message."
    exit 1
fi

echo "NixOS system setted up successfully!"

# SSH key
# Data files
# Chmod the setup and rebuild file