#!/bin/bash

set -euo pipefail

DIR=${1:-}

if [ -z "$DIR" ]; then
 echo "Usage: $0 <directory path>"
 exit 1;
fi

if [ -d "$DIR" ]; then
  echo "Directory $DIR exits"
else 
  echo "Directory $DIR does not exit"
fi
