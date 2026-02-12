#!/bin/bash

set -euo pipefail

echo "Simple Bash Calculator"

read -r -p "Enter first number: " num1
read -r -p "Enter second number: " num2
read -r -p "Enter the operator (+ - * /): " op

# Validate numbers (integers only)
if ! [[ "$num1" =~ ^-?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]+$ ]]; then
    echo "Error: Please enter valid integers."
    exit 1
fi

case "$op" in
    "+")
        result=$(( num1 + num2 ))
        ;;
    "-")
        result=$(( num1 - num2 ))
        ;;
    "*")
        result=$(( num1 * num2 ))
        ;;
    "/")
        if (( num2 == 0 )); then
            echo "Error: Division by zero is not allowed."
            exit 1
        fi
        result=$(( num1 / num2 ))
        ;;
    *)
        echo "Error: Invalid operator. Use + - * /"
        exit 1
        ;;
esac

echo "Result is: $result"
