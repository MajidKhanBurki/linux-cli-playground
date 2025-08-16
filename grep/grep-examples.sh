#!/bin/bash
# Examples of using grep command 

echo "Examples of using grep command"
echo "check version"
grep --version # check version

grep --help # help and usage


echo "search for a jerry in a file"
grep "jerry" sample-data.txt # search for a keyword in a file

echo "count how many times jerry appears in a file"
grep -ic "jerry" sample-data.txt # search for a keyword and count


echo "search for a jerry in a file while being case insensitive"
grep -i "jerry" sample-data.txt #search for a keyword while being case insensitive

echo "search for a jerry in a file and display the matched lines and their number"
grep -in "jerry" sample-data.txt # display the matched lines and their number

grep -v "jerry" sample-data.txt #display everything but the keyword

grep "jerry" sample-data.txt | awk '{print $1}' # search for keyword then give only 1st field

egrep -i "jerry|jerry2" sample-data.txt #search for 2 keywords