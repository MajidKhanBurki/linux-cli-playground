#!/bin/bash
# examples usage of sort and uniq commands

echo "Sort a file alphabetically"

sort sample-data.txt

echo "################################"
echo "   "
echo "Sort numbers in ascending order"
sort -n sample-data.txt

echo "################################"
echo "   "
echo "Sort in reverse order"
sort -r sample-data.txt

echo "################################"
echo "   "
echo "Sort by the 2nd column (space-separated file)"
sort -k2 sample-data.txt

echo "################################"
echo "   "
echo "Sort uniquely (removes duplicates)"
sort -u sample-data.txt


echo "################################"
echo "   "
echo "Remove consecutive duplicates"
uniq sample-data.txt

echo "################################"
echo "   "
echo "Count occurrences of each line"
uniq -c sample-data.txt

echo "################################"
echo "   "
echo "Show only duplicates"
uniq -d sample-data.txt

echo "################################"
echo "   "
echo "Show only unique lines"
uniq -u sample-data.txt

echo "################################"
echo "   "
echo "Best practice: sort first, then uniq"
sort sample-data.txt | uniq