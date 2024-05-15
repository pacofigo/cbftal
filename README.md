# CBFTAL 🐧
**Copy daily backups monthly to another location.**
<br>
<br>
<br>
## Generate the backup locally
### Preparation of the necessary local files
1. Copy the `monthly_backup.sh` file to the home of your user.
2. Add execution permissions to `monthly_backup.sh` file: `chmod +x monthly_backup.sh`
### Automatic local backup scheduling
1. Edit the user's cron with the command `crontab -e`. In case any of the folders due to their location require root permissions, prepend sudo to the execution of the crontab command so that it is executed as root `sudo crontab -e`.
2. Paste this line in the text editor `0 6 1 * * sh /home/user/monthly_backup.sh`. Save the changes and close the file. The scheduled task will run every first day of the month at 6:00 a.m.
3. To ensure that the task was scheduled correctly, run the following command `crontab -l`. You should see the line that we added in the previous step.
