#!/bin/bash
#
# Creates a new journal entry with the current date.
#

# Get the current date in the format YYYY.MM.DD
DATE=$(date +"%Y.%m.%d")
JOURNAL_DIR="content/journal"
FILENAME="$JOURNAL_DIR/$DATE.md"

# Create the journal directory if it doesn't exist
mkdir -p "$JOURNAL_DIR"

# Check if a file for today's date already exists
if [ -f "$FILENAME" ]; then
    echo "Journal entry for $DATE already exists."
    exit 1
fi

# Create the new journal file with the Zola front matter
cat << EOF > "$FILENAME"
+++
title = "$DATE"
date = "$(date -I)"
template = "page.html"
+++

# Journal Entry for $DATE

Your thoughts here...
EOF

echo "Created new journal entry: $FILENAME"
