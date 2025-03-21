#!/bin/bash
#
## Prompt user for log file and keyword
echo "Enter the log file path:"
read logfile
#
echo "Enter the keyword to search for:"
read keyword

## Check if the file exists
if [ ! -f "$logfile" ]; then
    echo "Error: File '$logfile' not found!"
    exit 1
fi
#
  # Extract and display matching lines
echo "Lines containing '$keyword' in '$logfile':"
grep "$keyword" "$logfile"
#
