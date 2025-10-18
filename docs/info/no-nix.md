## ❌ Not everything is reproducable!
### 1. Zen browser
Please copy your Zen browser profiles in the `.zen`. Make sure to clear the `storage/default` directory or it will feel sluggish

> [!WARNING]
> A Zen profile as it contains everything, including sensetive data. **DO NOT** share it publicly. 

### 2. p10k configuration
p10k is not declared by home manager because of it's large file size. New p10k setup will be prompt by the p10k configurator.
    
### 3. Wakatime API
Include your own `~/.wakatime.cfg` to make wakatime work (or hakatime). 

### 4. RClone
Follow [RClone Guide](../nixing/rclone.md) to setup RClone for Google Drive.

### 5. SSH
Follow [SSH Guide](../nixing/ssh.md) to setup SSH for GitHub

## ⚠️ Warnings
### 1. username@host
The configuration will **BREAK** if the user is not `udontur` and the host is not `earth`

### 2. DO NOT declare MIME apps
Even when Linux and Windows merges, **PPPLLLEEAASSE DO NOT** put MIME apps list in home manager, it will break:
> [!WARNING]  
> **PLEASE DO NOT PUT MIME APPS LIST IN HOME MANAGER**

