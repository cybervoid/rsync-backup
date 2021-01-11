#!/bin/sh

echo "Running rsync"
rsync --progress -huvarz /source/ "$DEST"
