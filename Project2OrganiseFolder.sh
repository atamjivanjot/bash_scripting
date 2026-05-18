#!/bin/bash

# Create folders if they don't exist
mkdir -p Images PDFs Docs Others

# Loop through all items in current directory
for file in *
do
    # Check if item is a file
    if [[ -f "$file" ]]
    then

        # Images
        if [[ "$file" == *.jpg || "$file" == *.png || "$file" == *.jpeg ]]
        then
            mv "$file" Images/

        # PDFs
        elif [[ "$file" == *.pdf ]]
        then
            mv "$file" PDFs/

        # Documents
        elif [[ "$file" == *.txt || "$file" == *.docx ]]
        then
            mv "$file" Docs/

        # Remaining files
        else
            mv "$file" Others/
        fi

    fi
done

echo "Files organized successfully!"