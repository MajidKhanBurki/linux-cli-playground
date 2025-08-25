# awk

awk is a utility designed for data extraction. Most of the time, it is used to extract fields from a file or from an output.

```bash

awk --version ## check version

awk `{print $1}` file  ## List 1st field from a file

ls -l | awk `{print $1,$3}` ## list 1st and 3rd field of ls -l output

ls -l | awk `{print $NF}` # last field of the output

awk `/Jerry/ {print}` file # Search for a specific word

echo "Hello Tom" | awk `{$2 = "Adam" ; print$0}` # Replace words field words

cat file | awk `{$2="Majid"; print$0}` # Replace words

```