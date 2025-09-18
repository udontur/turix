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

> It's always evolving. Always. 

## ⭐ About
This repository contains all the dotfiles that reproduce my daily driver OS!
- **OS**: Linux 6.12 x86_64
- **Distro**: NixOS Unstable
- **WM/DE**: Hyprland (Wayland)
- **CPU**
  - Workstation: AMD Ryzen 8945HS (Mini PC laptop chip)
  - Workstation (legacy): AMD Ryzen 5600X
  - Laptop: AMD Ryzen 7530U
- **GPU**
  - Workstation: AMD Radeon 780M
  - Workstation (legacy): AMD Radeon RX 7600
  - Laptop: AMD Radeon Vega 6
- **Since**: 3rd March 2025

## ❌ Not everything is reproducable!
### 1. Zen browser
Please copy your Zen browser profiles in the `.zen`.

> [!WARNING]
> A Zen profile as it contains everything, including sensetive data. **DO NOT** share it publicly. 

### 2. p10k configuration
p10k is not declared by home manager because of it's large file size. New p10k setup will be prompt by the p10k configurator.
    
### 3. Wakatime API
The API is obviously not reproducable. Make sure to include your own `~/.wakatime.cfg` to make wakatime work. 

## ✅ To Do List
### 🚧 Fixes
- [ ] btop: GPU does not work
- [ ] btop (laptop): idk why the decimals are replaced as ","
- [ ] hyprspace: extremely laggy and broken :c
- [ ] Default apps is a complete mess
- [ ] bluetooth: a stable one + easy to pair
- [ ] nautilus: light mode when open nautilus in downloads open
- [ ] vscode: Caps lock escape mapping not working

### ✨ Features
- [ ] ~helix: waiting for tree file structure~
- [x] zen: record css changes and about:config changes
- [x] zen: folders
- [ ] wofi: add text shadown
- [ ] CUPS: try printing at home using CUPS
- [ ] nh: check it out
- [ ] vscode: Use partial Helix in vscode
- [ ] vscode: Rice vscode (no declerative, state what you changed)

## 📑 Documentation
See the [docs directory](docs).
