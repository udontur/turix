## Failed to git commit
IDK why but sometimes the `.git` folder will change permission by itself:
```bash
sudo chown -R udontur:777 ./.git
```

## NixOS build error?
If it starts outputting weird errors, make sure all used files are tracked by `git`
```bash
git add .
```

## SSH Key
See [ssh.md](ssh.md)

### Flake path
If the flake path changed, you need to change the `NH_FLAKE` environment variable
```bash
export NH_FLAKE=/home/udontur/path/to/dir
```

### Fresh NixOS install
Make sure the boot loader is selected as `NixOS Bootloader` instead of `Linux Bootloader`. 
