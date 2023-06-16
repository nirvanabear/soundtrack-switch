#!/bin/bash

cd "$1"

for file in *; do
    rename=$(echo "$file" | sed -n "s#altti_msu#alttp_msu#p")
    echo "$rename"
    if [ -f "$rename" ]; then
        mv "$file" "$rename"
        # echo "$file"
    fi
done