# NixOS Broke!
Run to see your disks
```
fdisk -l
```
Mount your partitions
```
sudo mount /dev/nvme0n1p2 /mnt
sudo mount /dev/nvme0n1p1 /mnt/boot
```
Regenerate files
```
nixos-generate-config --root /mnt
```
Rebuild
```
nixos-install --root /mnt
```
