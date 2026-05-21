#!/bin/bash

error_count=0
warning_count=0
info_count=0

while read line
do
    if [[ "$line" == *ERROR* ]]
    then
        ((error_count++))

    elif [[ "$line" == *WARNING* ]]
    then
        ((warning_count++))

    elif [[ "$line" == *INFO* ]]
    then
        ((info_count++))
    fi

done < sample.log

echo "ERROR: $error_count"
echo "WARNING: $warning_count"
echo "INFO: $info_count"

#learnt about reading the file through while loop 
#learnt about matching the word in line using *
