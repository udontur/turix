<div align="center">
  <h1 align="center">nixos</h3>
  <p align="center">
    ❄️ Welcome to my Linux Configuration! 
    <br />
    <br />
    <a href="https://hadrian.cc">I ❤️ my daily driver OS and PC Setup!</a>
    ·
    <a href="https://hadrian.cc">Made with passion by Hadrian</a>
  </p>
</div>

## ⭐ About
This repository contains all the dotfiles that reproduce my daily driver OS!
- **OS**: Linux x86_64
- **Distro**: NixOS Unstable
- **WM/DE**: Hyprland (Wayland)
- **Addons**: home-manager, Nix flakes
- **CPU**: AMD Ryzen 5000s (Workstation) and AMD Ryzen 7000s (Laptop)
- **GPU**: AMD RX 7000s (Workstation) and AMD Intergrated Graphics (Laptop)
- **Since**: 3rd March 2025

> [!WARNING]  
> This is **NOT** a general purpose configuration

## ❌ Non-Reproducable applications
### 1. Zen browser configuration 
Firefox Sync is enabled, so you can sync:
  - Extensions
  - Non-sensitive extension settings
  - Zen settings
  - Workspaces and containers

You cannot sync:
  - Any sensitive data
  - about:config
  - Tabs, Essentials, and pinned tabs
  - Any other stuff that is not mentioned

> [!WARNING]
> **DO NOT** copy your Zen profile as it contains everything, including sensetive data.

### 2. p10k configuration
p10k is not declared by home manager because of it's large file size. New p10k setup will be prompt by the p10k configurator.

### 3. Wakatime API
The API is obviously not reproducable. Make sure to include your own `~/.wakatime.cfg` to make wakatime work. 

## ✅ To Do List
### 🚧 Fixes
- [ ] btop: GPU does not work
- [ ] hyprspace: extremely laggy and broken :c
- [ ] default apps is a complete mess
- [ ] bluetooth (laptop): a stable one + easy to pair

### ✨ Features
- [ ] helix: when have tree file structure
- [x] zen: record css changes and about:config changes
- [x] zen: folders
- [ ] wofi: add text shadown
- [ ] CUPS: try printing at home using CUPS

## 📑 Documentation
See the [docs directory](docs).
