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
### 1. ALL zen configuration (hope it will be added to ```nixpkgs``` soon)
  - Extensions
  - Settings
  - Essential Tabs, Pinned Tabs, Workspaces
  - Non-sensitive extension settings
### 2. p10k configuration
p10k is not declared by home manager because of it's large file size. New p10k setup will be prompt by the p10k configurator.

## ✅ To Do List
### 🚧 Fixes
- [x] Fix: hyprpicker
- [x] Fix: SDDM theme (changed to GDM)
- [x] Fix: Hyprshot smooth animation
- [x] Fix: p10k configuration
- [x] Fix: Rebuild script git bug
- [ ] btop: GPU does not work
- [ ] easyeffects: presets does not load declaratively
- [ ] vscode: waybar characters are not rendering in vscode only
- [ ] hyprshot: packages are not includeded by the flake
- [ ] flake: I dont really understand what is going in the `flake.nix`
- [ ] reb: Git sync error handling


### ✨ Features
- [x] NixOS generation garbage collector
- [x] Emoji, Text, and Image clipboard
- [ ] Find a way to update individual packages (Yes, I did not rtfm)
- [ ] Set default applications without crashing home manager (mime apps does crash it)
- [ ] Integrate emoji picker with wofi (or use rofi)
- [ ] Merge the laptop config with host specific config files
- [ ] Make zen declarative (thinking of copying the firefox profiles automatically)

## 🤨 Tips and Tricks
### Fail to git commit
IDK why but sometimes the `.git` folder will change permission by itself:
```bash
sudo chown -R udontur:777 ./.git
```

### MIME apps
Even when Linux and Windows merges, **PLEEEASE DO NOT** put MIME apps list in home manager, it will break:
> [!WARNING]  
> **PLEASE DO NOT PUT MIME APPS LIST IN HOME MANAGER**

### Clear up the storage
Nix garbage collector
```bash
nix-collect-garbage --delete-older-than 30d
```
Nix store optimization
```bash
nix-store --optimise
```

### NixOS build error?
If it starts outputting weird errors, make sure all used files are tracked by `git`
```bash
git add .
```