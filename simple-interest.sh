#!/bin/bash

# This script calculates the simple interest given principal, rate of interest, and time.

# Function to calculate simple interest
calculate_simple_interest() {
  local principal=$1
  local rate=$2
  local time=$3

  # Calculate simple interest
  local interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

  # Display the result
  echo "Simple Interest is: $interest"
}

# Check if the correct number of arguments is provided
if [ $# -ne 3 ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  exit 1
fi

# Read the inputs
principal=$1
rate=$2
time=$3

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
