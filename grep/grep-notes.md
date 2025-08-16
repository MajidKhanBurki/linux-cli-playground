# grep / egrep

The `grep` command which stands for "global regular expression print" processes text line by line and prints any lines which match a specified pattern.


```bash
grep --version # check version

grep --help # help and usage

grep keyword file # search for a keyword in a file

grep -c keyword file # search for a keyword and count

grep -i keyword file #search for a keyword while being case insensitive

grep -n keyword file # display the matched lines and their number

grep -v keyword file #display everything but the keyword

grep keyword file | awk `{print $1}` # search for keyword then give only 1st field

egrep -i "keyword|keyword2" file #search for 2 keywords
```