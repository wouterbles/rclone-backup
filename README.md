# Rclone Backup
Bash script for automatic website data backup with rclone and Backblaze B2.

## Setup
1. Create a B2 bucket called "rclone-backup-[unique name]"
2. Run the setup script which downloads and installs rclone
```$ ./setup.sh```
3. Next, the rclone config processs will be opened automatically, select B2 and insert the API keys
4. Update the bucket name in ./script.sh
5. Add cron-job for ./script.sh
