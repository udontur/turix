<div align="center">
  <h1 align="center">nixos</h3>
  <p align="center">
    ❄️ Welcome to my NixOS Linux Configuration! 
    <br />
    <br />
    <a href="https://hadrian.cc">I ❤️ my daily driver OS and PC Setup!</a>
    ·
    <a href="https://hadrian.cc">Made with passion by Hadrian</a>
  </p>
</div>

# ⭐ About
This repository contains all the dotfiles that reproduce my daily driver OS!
- **OS**: Linux x86_64 (AMD Ryzen 5000 series chip)
- **Distro**: NixOS Unstable
- **WM/DE**: Hyprland 
- **Addons**: home-manager, nix-flakes
- **GPU**: AMD on Wayland (RX 7000 series)
- **Since**: 3rd March, 2025

> [!WARNING]  
> This is **NOT** a general purpose configuration

[nixos-laptop](https://github.com/udontur/nixos-laptop) is the minimal version that is tailored to a laptop. 

# 🗒️ Note
1. This is **NOT** a general purpose configuration
2. Emails and usernames are **TAILORED** 
3. The configuration will **BREAK** if the user is not ```udontur``` 

# ❌ NON-Reproducable applications
1. ALL zen configuration (hope it will be added to ```nixpkgs``` soon)
2. GTK theme is a buggy (primarily in ```nautilus```)

# ✅ To Do List
### 🚧 Fixes
- [ ] Fix: hyprpicker
- [ ] Fix: SDDM theme
- [ ] Fix: Hyprshot smooth animation
- [ ] Fix: p10k configuration
- [ ] Fix: Rebuild script git bug

### ✨ Features
- [ ] NixOS generation garbage collector
- [ ] Emoji, Text, and Image clipboard
- [ ] Find a way to update individual packages (Yes, I did not rtfm)

# 🤨 Weird Things
Some how the permission changes:
```bash
sudo chown -R udontur:777 ./nixos
```
