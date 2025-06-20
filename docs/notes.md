### 1. username@host
The configuration will **BREAK** if the user is not `udontur` and the host is not `earth`

### 2. DO NOT declare MIME apps
Even when Linux and Windows merges, **PPPLLLEEAASSE DO NOT** put MIME apps list in home manager, it will break:
> [!WARNING]  
> **PLEASE DO NOT PUT MIME APPS LIST IN HOME MANAGER**

### 3. Zen profiles
When copying zen profiles, copy **EVERYTHING** in the `.zen` directory.

Make sure to change `compatibility.ini` in each fresh migration.

### 4. Fresh NixOS install
Make sure the boot loader is selected as `NixOS Bootloader` instead of `Linux Bootloader`. 
