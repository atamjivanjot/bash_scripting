#!/bin/bash
counter=1

for file in *
do
  if [[ $file == *.txt ]]
  then
    mv $file project-$counter.txt
    ((counter++))
    echo $file
  fi 
done
