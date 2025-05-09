<div align="center">
  <h1 align="center">nixos</h3>
  <p align="center">
    ❄️ Welcome to my NixOS Linux Configuration! 
    <br />
    <br />
    <a href="https://hadrian.cc">❤️ my daily driver OS and Setup!</a>
    ·
    <a href="https://hadrian.cc">Made with passion by Hadrian</a>
  </p>
</div>

# ⭐ About
This repository contains all the dotfiles that reproduce my daily driver OS!
- **OS**: Linux x86_64
- **Distro**: NixOS
- **WM/DE**: Hyprland
- **Addons**: home-manager, nix-flakes
- **GPU**: AMD (RX 7000 series)
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
- [ ] NixOS generation garbage collector
- [ ] p10k configuration
- [ ] Fix: hyprpicker (clipboard is broken)

# 🤨 Weird Things
Some how the permission changes:
```bash
sudo chown -R udontur:777 ./nixos
```

<!-- 
# Setting Up
Please setup a hardware config
make sure to connect to wifi usin nmtui
1. Add git temporarily to the config file
```bash
sudo nix-shell -p git & sudo nixos-rebuild switch
```
2. Git clone the repo over https
```bash
git clone https://github.com/udontur/nixos.git
```
cd dir
3. Run and follow the SSH setup script
```bash
sudo chmod +x ./script/ssh-gen.sh & ./script/ssh-gen.sh
```
4. Remove the current nixos folder
```bash
cd ~ & rm -rf ~/nixos
```
6. Git clone the repo via ssh
```bash
git clone git@github.com:udontur/nixos.git
```
7. Run the setup script
```bash
sudo chmod +x ./script/setup.sh & ./script/setup.sh
```
8. Rebuild the nixos configuration
```bash
sudo chmod +x ./rebuild & ./rebuild
``` -->
<!-- 
# Usage -->