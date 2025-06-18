## Setting up an SSH connection from your computer to GitHub
### On your Machine
1. Generate the SSH key
```sh
ssh-keygen -t ed25519 -C "h@hadrian.cc"
```
2. Press `Enter` and type the passphrase
3. Start the SSH Agent in the background
```sh
eval "$(ssh-agent -s)"
```
4. Add the SSH private key to the SSH Agent
```sh
ssh-add ~/.ssh/id_ed25519
```
5. Copy the SSH private key
```sh
cat ~/.ssh/id_ed25519.pub
```

### On GitHub
1. Go to `Settings`
2. In the `Access` section, click `SSH and GPG keys`
3. Click `New SSH key`
4. Paste the copied key into the `Key` box
5. Add a title in the `Title` box
6. Click `Add SSH key`
