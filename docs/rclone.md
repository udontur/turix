### Config on new machine
Setup rclone and follow your common sense.
```
rclone config
```

Here is the Google drive wiki: [Rclone Google Drive wiki](https://rclone.org/drive/) 

### Client ID and Secret
The client ID and Secret is in 1Password.
Setup docs: [Rclone Google Drive wiki - Setup Client ID](https://rclone.org/drive/#making-your-own-client-id)

### Usage
Push a folder to Google Drive
```
rclone sync /path/to/dir remote:path/to/dir
```
Pull to local directory
```
rclone sync remote:path/to/dir /path/to/dir
``` 
