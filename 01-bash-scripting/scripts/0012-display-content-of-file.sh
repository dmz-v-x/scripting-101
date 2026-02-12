#!/bin/bash

set -euo pipefail

read -r -p "Enter the complete file path: " FILE

if [ ! -f "$FILE" ]; then
    echo "File at $FILE does not exist"
    exit 1
fi

cat "$FILE"


# -------------------------------------------------------------


#!/bin/bash
set -euo pipefail

read -r -p "Enter the complete file path: " file

[[ -f "$file" ]] || { 
    echo "Error: File '$file' does not exist."
    exit 1
}

cat "$file"
