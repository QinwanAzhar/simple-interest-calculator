#!/bin/bash

# simple-interest.sh
# Bash script to calculate Simple Interest given principal, rate of interest, and time period.
# Simple Interest = (Principal * Rate * Time) / 100

echo "================================================"
echo "         Simple Interest Calculator             "
echo "================================================"

# Input: Principal
echo -n "Enter the Principal amount: "
read principal

# Input: Rate of Interest
echo -n "Enter the Rate of Interest (% per annum): "
read rate

# Input: Time Period
echo -n "Enter the Time Period (in years): "
read time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $simple_interest" | bc)

echo "================================================"
echo "Principal        : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "------------------------------------------------"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total"
echo "================================================"
