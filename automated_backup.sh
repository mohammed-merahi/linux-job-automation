#!/bin/bash

# Automated backup script with timestamped logging

LOGFILE="/var/log/backup_$(date +%F_%T).log"
BACKUP_SRC="/home/user/data"
BACKUP_DEST="/home/user/backups"

echo "Backup started at $(date)" >> "$LOGFILE"
tar -czf "$BACKUP_DEST/backup_$(date +%F).tar.gz" "$BACKUP_SRC" >> "$LOGFILE" 2>&1
echo "Backup completed at $(date)" >> "$LOGFILE"

