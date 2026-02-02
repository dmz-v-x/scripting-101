#!/bin/bash

set -euo pipefail

read -p "Enter number 1: " NUM1

read -p "Enter number 2: " NUM2

SUM=$((NUM1 + NUM2))

echo "The sum of $NUM1 and $NUM2 is: $SUM"
