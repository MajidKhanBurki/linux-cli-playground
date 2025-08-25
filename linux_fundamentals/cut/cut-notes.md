# Cut

Cut is a command line utility that allows you to cut parts of lines from specified files or piped data and print the result to standard output. It can be used to cut parts of a line by delimiter, byte position, and character.

- `cut filename` = Does not work
- `cut --version` = check version
- `cut -c1 filename` = list one character
- `cut -c1,2,4 filename` = pick and choose character
- `cut -c1-3 filename` = list range of characters
- `cut -c1-3,6-8 filename` = list specific range of characters
- `cut -b1-3 filename` = list by byte size
- `cut -d: -f 6 /etc/passwd` = list the 6th column separated by `:`
- `ls -l | cut -c2-4` = only print user permissions of files/dir