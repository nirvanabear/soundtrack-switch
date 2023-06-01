#!/bin/bash
# Copies a single file with a 0 in the name
# Ouputs individually numbered copies

# Takes two arguments:
    # filepath
        # Will copy files into the same dirname as "filepath"
    # number of copies needed

echo "$@"
i=1
while [ $i -le "$2" ]; do
    # echo "$i"
    rename=$(echo "$1" | sed -n "s#0#$i#p")
    cp "$1" "$rename"
    i=$((i+1))
done
exit 0

