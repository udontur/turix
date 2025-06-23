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
- **OS**: Linux x86_64 (AMD Ryzen 5000s and AMD Ryzen 7000s)
- **Distro**: NixOS Unstable
- **WM/DE**: Hyprland (Wayland)
- **Addons**: home-manager, nix-flakes
- **GPU**: AMD RX 7000s and AMD Intergrated Graphics
- **Since**: 3rd March 2025

> [!WARNING]  
> This is **NOT** a general purpose configuration

## ❌ Non-Reproducable applications
### 1. All Zen browser configuration 
This includes:
  - Extensions
  - Non-sensitive extension settings
  - Settings
  - Essential Tabs, Pinned Tabs, Workspaces
  - Others

You can make a manual and private backup of your Zen profile.
> [!CAUTION]
> A Zen profiles contains **EVERYTHING**. This includes **Sensitive Information** like logged in site data. 

### 2. p10k configuration
p10k is not declared by home manager because of it's large file size. New p10k setup will be prompt by the p10k configurator.

### 3. Wakatime API
The API is obviously not reproducable. Make sure to include your own `~/.wakatime.cfg` to make wakatime work. 

## ✅ To Do List
### 🚧 Fixes
- [ ] btop: GPU does not work
- [x] laptop: TLP battery optimization specifically for laptop
- [x] btop: Add battery back

### ✨ Features
- [ ] laptop: Battery indicator script (while true, check, libnotify)
- [ ] wakatime: Add more lsp (css, html, jsx, etc)
- [ ] hyprfocus: Add flash focus for laptop
- [ ] laptop: bring back waybar without the workspace

## 📑 Documentation
See the [docs directory](docs).
