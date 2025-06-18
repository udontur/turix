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
  - Extensions
  - Settings
  - Essential Tabs, Pinned Tabs, Workspaces
  - Non-sensitive extension settings
You can make a manual backup of your Zen profile.

### 2. p10k configuration
p10k is not declared by home manager because of it's large file size. New p10k setup will be prompt by the p10k configurator.

### 3. Wakatime API
The API is obviously not reproducable. Make sure to include your own `~/.wakatime.cfg` to make wakatime work. 

## ✅ To Do List
### 🚧 Fixes
- [ ] btop: GPU does not work
- [ ] easyeffects: presets does not load declaratively
- [ ] GTK: ultra large cursor due to fractional scaling

### ✨ Features
- [ ] hyprland: hyprscroller
- [ ] laptop: Battery indicator script (libnotify)

### 🎇 Features that I have no idea how to add
- [ ] Set default applications without crashing home manager (mime apps list does crash it)
- [ ] Make zen declarative (thinking of copying the firefox profiles automatically)

## 📑 Documentation
See the [docs directory](docs).
