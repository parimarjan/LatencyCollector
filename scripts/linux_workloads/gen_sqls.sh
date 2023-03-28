#!/bin/bash

#DIRECTORY="../../queries/ceb-small"  # replace with your directory path
DIRECTORY="../../queries/job"  # replace with your directory path

for file in "$DIRECTORY"/*
do
  if [ -f "$file" ]  # check if the current item is a regular file
  then
    echo "psql -d imdb -U ubuntu -p 5432 < $file"
  fi
done
