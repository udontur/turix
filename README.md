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

## ⭐ About
This repository contains all the dotfiles that reproduce my daily driver OS!
- **OS**: Linux x86_64 (AMD Ryzen 5000s)
- **Distro**: NixOS Unstable
- **WM/DE**: Hyprland (Wayland)
- **Addons**: home-manager, nix-flakes
- **GPU**: AMD RX 7000s
- **Since**: 3rd March, 2025

> [!WARNING]  
> This is **NOT** a general purpose configuration

[nixos-laptop](https://github.com/udontur/nixos-laptop) is the minimal version that is tailored to a laptop. 

## 🗒️ Note
1. This is **NOT** a general purpose configuration
2. Emails and usernames are **TAILORED** 
3. The configuration will **BREAK** if the user is not ```udontur``` 

## ❌ NON-Reproducable applications
1. ALL zen configuration (hope it will be added to ```nixpkgs``` soon)
  - Extensions
  - Settings
  - Essential Tabs, Pinned Tabs, Workspaces
  - Non-sensitive extension settings

## ✅ To Do List
### 🚧 Fixes
- [x] Fix: hyprpicker
- [x] Fix: SDDM theme (changed to GDM)
- [x] Fix: Hyprshot smooth animation
- [x] Fix: p10k configuration
- [x] Fix: Rebuild script git bug

### ✨ Features
- [x] NixOS generation garbage collector
- [x] Emoji, Text, and Image clipboard
- [ ] Find a way to update individual packages (Yes, I did not rtfm)
- [ ] Set default applications without crashing home manager (mime apps does crash it)
- [ ] Integrate emoji picker with wofi (or use rofi)

## 🤨 Weird Things
Some how the permission changes:
```bash
sudo chown -R udontur:777 ./nixos
```
