#!/bin/sh

echo "Copying ssh key"
cp -rf /media/.ssh ~/.ssh
chmod 700 ~/.ssh

echo "Running rsync"
rsync --progress -huvarz /mnt/ "$DEST"
