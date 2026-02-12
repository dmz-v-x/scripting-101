#!/bin/bash

set -euo pipefail

read -r -p "Enter the complete file path: " DIR

if [ ! -d "$DIR" ]; then
    echo "Error: $DIR is not a valid directory"
    exit 1
fi

for file in "$DIR"/*; do
    if [ -f "$file" ]; then
        echo "File: $file"
    fi
done
