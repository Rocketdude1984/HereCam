#!/bin/bash
set -uo pipefail

# Config
SRC_BASE="/home/herecam/images"
# server mount
DEST_BASE="/mnt/ZimaOS"
LOG="/home/herecam/logs/upload.log"

# try backing up from 7 days ago (in case wifi is lost or server is down)
DAYS_BACK=7 

mkdir -p "$(dirname "$LOG")"

# loop for 7 days back, make directory on server, log SD usage, sync files
{
  echo "=== $(date) : Starting nightly sync ==="

  for i in $(seq 1 $DAYS_BACK); do
    D=$(date -d "$i days ago" +%Y/%m/%d)
    SRC="${SRC_BASE}/${D}"
    DEST="${DEST_BASE}/${D}"

    if [ -d "$SRC" ]; then
      mkdir -p "$DEST"
      rsync -av "$SRC"/ "$DEST"/
    else
      echo "Skipping ${SRC} (does not exist)"
    fi
  done

  echo "=== $(date) : Sync complete ==="
  echo "--- SD usage ---"
  df -h "$SRC_BASE"
  echo ""

} >> "$LOG" 2>&1
