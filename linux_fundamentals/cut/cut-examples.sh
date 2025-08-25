#!/bin/bash
# Example usage of the cut command
# This script demonstrates how to use the cut command to extract specific fields from a file.
# Example file content

cut --help

echo "extract first character from each line"

cut -c1 sample-data.txt # Extract the first character from each line

echo "extract first 5 characters from each line"

cut -c1-5 sample-data.txt # Extract the first 5 characters from each line


echo "list specific range of characters from each line"
cut -c1-5,8-10 sample-data.txt # Extract characters from positions 1 to 5 and 8 to 10 from each line

echo "extract first field from each line using ':' as the delimiter"
cut -d: -f1 sample-data.txt # Extract the first field from each line using ':' as the delimiter