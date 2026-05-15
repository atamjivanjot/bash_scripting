#!/bin/bash

count=0

for file in *
do
    if [[ $file == *.txt ]]
    then
        echo "$file is a text file"
        ((count++))
    fi
done

echo "Total text files: $count"