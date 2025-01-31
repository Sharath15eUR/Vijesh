#!/bin/bash

#To check for 3 args present
if [ "$#" -ne 3 ]; then
    echo "Less no. of args. Usage: $0 <source> <dest.> <extension>"
    exit 1
fi

SOURCE_DIR="$1"
BACKUP_DIR="$2"
FILE_EXT="$3"

#To verify whether the src directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Error! Source directory do not exist."
    exit 1
fi

#Create New backup directory if it does not exist
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR" || { echo "Failed to create backup directory."; exit 1; }
fi

#To find files with the extension
FILES=($SOURCE_DIR/*$FILE_EXT)

#For Checking if there are matching files
if [ "${#FILES[@]}" -eq 0 ]; then
    echo "No files with extension $FILE_EXT found."
    exit 0
fi

#export variable
export BACKUP_COUNT=0
TOTAL_SIZE=0

# Print files to be backed up
echo "Files to be backed up:"
for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        FILE_SIZE=$(stat -c%s "$FILE")
        echo "$(basename "$FILE") - $FILE_SIZE bytes"
        TOTAL_SIZE=$((TOTAL_SIZE + FILE_SIZE))
    fi
done

echo "Starting to backup..."
for FILE in "${FILES[@]}"; do
    if [ -f "$FILE" ]; then
        DEST_FILE="$BACKUP_DIR/$(basename "$FILE")"
        if [ -f "$DEST_FILE" ]; then
            if [ "$FILE" -nt "$DEST_FILE" ]; then
                cp "$FILE" "$DEST_FILE"
                echo "Updated: $(basename "$FILE")"
                ((BACKUP_COUNT++))
            fi
        else
            cp "$FILE" "$DEST_FILE"
            echo "Copied: $(basename "$FILE")"
            ((BACKUP_COUNT++))
        fi
    fi
done

#Create a report
REPORT_FILE="$BACKUP_DIR/backup_report.log"
echo "Backup Summary:" > "$REPORT_FILE"
echo "Total files processed: $BACKUP_COUNT" >> "$REPORT_FILE"
echo "Total size of files backed up: $TOTAL_SIZE bytes" >> "$REPORT_FILE"
echo "Backup location: $BACKUP_DIR" >> "$REPORT_FILE"


