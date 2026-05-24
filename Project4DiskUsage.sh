# 1. get the disk usage 
#2. find the files taking maximum of the space
#3. have a threshold to alert after that being crossed

#!/bin/bash
#!/bin/bash

threshold=80

# Top large files
top_files=$(du   -h --max-depth=1 /c/Users/delln/OneDrive | sort -rh | head -n 20)

echo "$top_files"

# Disk usage
usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

# Threshold check
if [ "$usage" -gt "$threshold" ]
then
    echo "Threshold crossed"
fi


#this works slow on windows.
