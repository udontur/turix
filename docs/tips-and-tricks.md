## 1. Failed to git commit
IDK why but sometimes the `.git` folder will change permission by itself:
```bash
sudo chown -R udontur:777 ./.git
```
## 2. Clear up the storage
Nix garbage collector
```bash
nix-collect-garbage --delete-older-than 16d
```
Nix store optimization
```bash
nix-store --optimise
```

## 3. NixOS build error?
If it starts outputting weird errors, make sure all used files are tracked by `git`
```bash
git add .
```

## 4. SSH Key
See [ssh.md](ssh.md)
