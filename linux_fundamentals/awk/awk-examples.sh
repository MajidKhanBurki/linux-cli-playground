#!/bin/bash
# Examples of using awk command
# This script demonstrates how to use the awk command to process text files.

awk --help
echo "Print the first field of each line"
awk '{print $1}' sample-data.txt # Print the first field of each line
echo "Print the first and second fields of each line"
awk '{print $1, $2}' sample-data.txt # Print the first and second fields of each line
echo "Print the first field of each line, using ':' as the delimiter"
awk -F: '{print $1}' sample-data.txt # Print the first field of each line, using ':' as the delimiter
echo "Print lines where the first field is 'John'"
awk '$1 == "John"' sample-data.txt # Print lines where the first field is 'John'
echo "Print lines where the second field is greater than 30"
awk '$2 > 30' sample-data.txt # Print lines where the second field is greater than 30
echo "Print lines where the third field contains 'Engineer'"
awk '$3 ~ /Engineer/' sample-data.txt # Print lines where the third field contains 'Engineer'
echo "Print lines where the first field is 'John' and the second field is greater than 30"
awk '$1 == "John" && $2 > 30' sample-data.txt # Print lines where the first field is 'John' and the second field is greater than 30