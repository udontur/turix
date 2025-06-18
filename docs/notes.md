### 1. username@host
The configuration will **BREAK** if the user is not `udontur` and the host is not `earth`

### 2. DO NOT declare MIME apps
Even when Linux and Windows merges, **PPPLLLEEAASSE DO NOT** put MIME apps list in home manager, it will break:
> [!WARNING]  
> **PLEASE DO NOT PUT MIME APPS LIST IN HOME MANAGER**

### 3. Versions
Make sure the `system.stateVersion` and `home.stateVersion` matches the NixOS version you installed
