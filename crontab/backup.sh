#!/bin/bash/

HOME_DIR="/home"
LOG_DIR="/var/log"
SSH_CONFIG="/etc/ssh"
RDP_CONFIG="/etc/xrdp"
FTP_CONFIG="/etc/vsftpd"

BACKUP_DIR="/archive"
BACKUP_NAME="backup_$(date +%Y-%m-%d_%H-%M-%S)"

mkdir -p $BACKUP_DIR

tar -cf $BACKUP_DIR/$BACKUP_NAME.tar $HOME_DIR $LOG_DIR $SSH_CONFIG $RDP_CONFIG $FTP_CONFIG

echo "Backup complete: $BACKUP_DIR/$BACKUP_NAME.tar"
