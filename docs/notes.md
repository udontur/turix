## ❌ Not everything is reproducable!
### 1. Zen browser
Please copy your Zen browser profiles in the `.zen`. Make sure to clear the `storage/default` directory or it will feel sluggish

> [!WARNING]
> A Zen profile as it contains everything, including sensetive data. **DO NOT** share it publicly. 

### 2. p10k configuration
p10k is not declared by home manager because of it's large file size. New p10k setup will be prompt by the p10k configurator.
    
### 3. Wakatime API
The API is obviously not reproducable. Make sure to include your own `~/.wakatime.cfg` to make wakatime work. 

## Warnings
### 1. username@host
The configuration will **BREAK** if the user is not `udontur` and the host is not `earth`

### 2. DO NOT declare MIME apps
Even when Linux and Windows merges, **PPPLLLEEAASSE DO NOT** put MIME apps list in home manager, it will break:
> [!WARNING]  
> **PLEASE DO NOT PUT MIME APPS LIST IN HOME MANAGER**

### 3. Fresh NixOS install
Make sure the boot loader is selected as `NixOS Bootloader` instead of `Linux Bootloader`. 
