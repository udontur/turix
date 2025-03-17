# Udontur's NixOS Configuration (WIP since 3rd March 2025)
- [ ] Rice flake.nix 
- [ ] Rice home.nix
- [ ] vscode
- [ ] zen home manager
- [ ] dat folder generation
- [ ] make laptop configuration

# Notes
The emails and usernames are NOT universal. 

The hardware-configuration.nix is quoted in absolute paths

# Setting Up
1. Add git temporarily to the config file
```sh
sudo nix-shell -p git & sudo nixos-rebuild switch
```
2. Git clone the repo over https
```sh
git clone https://github.com/udontur/nixos
```
3. Run and follow the SSH setup script
```sh
sudo chmod +x ./script/ssh-gen.sh & ./script/ssh-gen.sh
```
4. Remove the current nixos folder
```sh
rm -rf ~/nixos & cd ~
```
6. Git clone the repo via ssh
```sh
git clone git@github.com:udontur/SOMETHING.git
```
7. Run the setup script
```sh
sudo chmod +x ./script/setup.sh & ./script/setup.sh
```
8. Rebuild the nixos configuration
```sh
sudo chmod +x ./rebuild & ./rebuild
```

# Stuff that are NOT reproducable (for now)
1. If this isn't obvious enough, passwords are not reproducable
2. Zen configuration (extensions, extensions settings, settings, etc)
3. VScode (IDK why it does not work)
