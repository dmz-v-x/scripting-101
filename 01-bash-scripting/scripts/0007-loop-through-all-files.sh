#!/usr/bin/env bash
set -euo pipefail
shopt -s nullglob

DIR="......."

if [ ! -d "$DIR" ]; then
    echo "Directory $DIR does not exist"
    exit 1
fi

for arg in "$DIR"/*; do
    if [ -f "$arg" ]; then
        echo "Filename: $arg"
    fi
done
