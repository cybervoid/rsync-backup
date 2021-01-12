#!/bin/sh

echo "Running rsync"
rsync --progress -huvarz /mnt/ "$DEST"
