#! /bin/bash
exit

# Backup using rsync
sudo rsync -ar /home/sourcedir /mnt/usbkey/destination
# r: recursively
# a: backup symbolic links
# delete: delete source after backup
# v: verbose
# z: compress
# P: keep partially uploaded files

# over ssh
rsync -avzP -e ssh /home/localdir user@host:/backups/remotedir

# Embedding other languages
# Use interpreters in CLI mode
myvar=$(node -e "'onsole.log('test')")


