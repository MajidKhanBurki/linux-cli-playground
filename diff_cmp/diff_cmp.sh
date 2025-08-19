#!/bin/bash
# examples usage of diff and cmp commands

echo "Compare two text files"
echo " "

diff sample-data.txt sample-data2.txt

echo "Unified format (used in git, patch)"
echo " "
diff -u sample-data.txt sample-data2.txt

echo "Show differences ignoring case"
echo " "

diff -i sample-data.txt sample-data2.txt

echo "Ignore whitespace differences"
echo " "
diff -w sample-data.txt sample-data2.txt


echo "#################################"
echo "   "

echo "Compare two files byte by byte"
echo " "
cmp sample-data.txt sample-data2.txt

echo "Only report if files differ (no output if same)"
echo " "
cmp -s sample-data.txt sample-data2.txt
echo $?   # 0 = same, 1 = different

echo " "
echo "Show all differences in bytes"
echo " "
cmp -l sample-data.txt sample-data2.txt