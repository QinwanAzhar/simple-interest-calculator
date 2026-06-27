#!/bin/bash

# simple-interest.sh
# A Bash script to calculate Simple Interest based on user input.
#
# Formula: Simple Interest (SI) = (Principal * Rate * Time) / 100
#
# Inputs:
#   principal      - The initial amount of money (in currency units)
#   rate           - Annual rate of interest (in %)
#   time_period    - Duration of the investment/loan (in years)
#
# Output:
#   The computed Simple Interest

echo "========================================"
echo "       Simple Interest Calculator       "
echo "========================================"
echo ""

# Prompt the user for principal
read -p "Enter Principal (amount in $): " principal

# Validate principal
if [[ -z "$principal" || ! "$principal" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter a valid positive number for Principal."
    exit 1
fi

# Prompt the user for rate of interest
read -p "Enter Rate of Interest (% per annum): " rate

# Validate rate
if [[ -z "$rate" || ! "$rate" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter a valid positive number for Rate of Interest."
    exit 1
fi

# Prompt the user for time period
read -p "Enter Time Period (in years): " time_period

# Validate time period
if [[ -z "$time_period" || ! "$time_period" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter a valid positive number for Time Period."
    exit 1
fi

# Calculate Simple Interest using bc for floating-point arithmetic
simple_interest=$(echo "scale=2; ($principal * $rate * $time_period) / 100" | bc)

# Calculate total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

echo ""
echo "========================================"
echo "             Results                    "
echo "========================================"
echo "  Principal         : \$$principal"
echo "  Rate of Interest  : $rate%"
echo "  Time Period       : $time_period year(s)"
echo "----------------------------------------"
echo "  Simple Interest   : \$$simple_interest"
echo "  Total Amount      : \$$total_amount"
echo "========================================"
