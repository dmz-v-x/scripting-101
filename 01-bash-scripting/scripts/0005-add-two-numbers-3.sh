#!/bin/bash

read -p "Enter first number: " NUM1

[[ "$NUM1" =~ ^-?[0-9]+$ ]] || { echo "Please enter a valid integer"; exit 1; }

read -p "Enter second number: " NUM2

[[ "$NUM2" =~ ^-?[0-9]+$ ]] || { echo "Please enter a valid integer"; exit 1; }

SUM=$((NUM1 + NUM2))

echo "SUM of $NUM1 and $NUM2 is $SUM"
