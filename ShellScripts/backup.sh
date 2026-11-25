#!/bin/bash
# Author: Harsh Tomar
# Roll No: 2601730006
# Description: Creates a timestamped .tar.gz backup of a given folder

# 1. Check that an argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

# 2. Check that the folder exists
if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder '$SOURCE' does not exist."
    exit 1
fi

# 3. Create the backup archive
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
FILENAME="backup_${TIMESTAMP}.tar.gz"
FULLPATH="$BACKUP_DIR/$FILENAME"

if tar -czf "$FULLPATH" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"; then
    # 4. Success message with filename and size
    SIZE=$(du -h "$FULLPATH" | awk '{print $1}')
    echo "Backup successful!"
    echo "File : $FILENAME"
    echo "Size : $SIZE"
    # 5. Log line
    echo "$TIMESTAMP - SUCCESS - $FILENAME ($SIZE)" >> "$BACKUP_DIR/backup.log"
else
    echo "Backup failed!"
    echo "$TIMESTAMP - FAILED - $SOURCE" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
