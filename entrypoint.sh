#!/bin/sh

echo "Copying ssh key"
copy -rf /media/.ssh ~/.ssh
chmod 700 ~/.ssh

echo "Running rsync"
rsync --progress -huvarz /mnt/ "$DEST"
