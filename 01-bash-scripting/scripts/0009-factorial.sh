#!/bin/bash

set -euo pipefail

factorial() {
    local num=$1
    local result=1

    while (( num >= 1 )); do
        result=$(( result * num ))
        ((num--))
    done

    echo "Factorial is: $result"
}

factorial 5


# -------------------------------------------------------


#!/bin/bash

set -euo pipefail

factorial() {
    local num=$1
    local result=1

    while (( num >= 1 )); do
        (( result *= num ))
        (( num-- ))
    done

    echo "Factorial is: $result"
}

read -r -p "Enter a non-negative integer: " number

# Validate input
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a non-negative integer."
    exit 1
fi

factorial "$number"

