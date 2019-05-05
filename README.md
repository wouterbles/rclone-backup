# Rclone Backup
Bash script for automatic website data backup with rclone and Backblaze B2. The script uploads a zip file of the complete `/var/www` directory with the zip filename consisting of the date and time it was uploaded.

## Setup
1. Create a B2 bucket
2. Clone the repository with `$ git clone https://github.com/wouterbles/rclone-backup.git`
3. Run the setup script which downloads and installs rclone with `$ rclone-backup/setup.sh`
4. The rclone config processs will be opened automatically, select B2 and insert the API keys
5. Set the bucket name in a `.env` file with `B2_BUCKET_NAME=bucket-name-here`, file should be located in the `rclone-backup` folder
6. Add a cron-job for `script.sh` with `$ crontab -e`

Example cronjob: `@weekly ~/rclone-backup/script.sh`, for weekly backups and in the case that the repository was cloned to the home directory.
