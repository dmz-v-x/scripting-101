#!/bin/bash

set -euo pipefail

count=10

while [ "$count" -ge 1 ]; do
    echo "$count"
    ((count--))
done

count=10

while [ "$count" -ge 1 ]; do
    echo "$count"
    ((count--))
done
