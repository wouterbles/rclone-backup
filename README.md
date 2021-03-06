# Rclone Backup
Bash script for automatic website data backup with rclone and Backblaze B2. The script uploads a zip file of the complete `/var/www` directory with the zip filename consisting of the date and time it was uploaded.

## Setup
1. Create a B2 bucket
2. Enter your home directory `$ cd ~`
3. Clone the repository with `$ git clone https://github.com/wouterbles/rclone-backup.git`
4. Run the setup script which downloads and installs rclone with `$ rclone-backup/setup.sh`
5. The rclone config processs will be opened automatically, select B2 and insert the API keys
6. Set the bucket name in a `.env` file with `B2_BUCKET_NAME=bucket-name-here`, file should be located in the `rclone-backup` folder
7. Add a cron job for `script.sh` with `$ crontab -e`

Example cron job: `@weekly ~/rclone-backup/script.sh`, for weekly backups and in the case that the repository was cloned to the home directory.

## To Do
- Add MySQL and other database support
- Automatically setup cron job
- Let the user determine their own install location, currently limited to home directory
- Add backup retention time specified by the user
- Check compatibility with other remotes (Google Drive, Amazon S3, OneDrive...)
