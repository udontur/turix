#!/usr/bin/env bash

sudo echo "Generate SSH Key for GitHub"

echo "Press Enter when prompted to enter a file: "

# Generate the SSH Key
sudo ssh-keygen -t ed25519 -C "h@hadrianlau.com"

# WAKE UP SSH AGENT
sudo eval "$(ssh-agent -s)"

# Add the SSH key to the SSH agent
sudo ssh-add ~/.ssh/id_ed25519

# Output the SSH key
sudo cat ~/.ssh/id_ed25519.pub

echo "Copy the above text and paste in the \"New SSH Key\" section under GitHub settings."