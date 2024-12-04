#!/bin/bash

directory="$1"

echo "Empty files in '$directory':"
find "$directory" -type f -empty

if [ $? -ne 0 ]; then
  echo "No empty files found in '$directory'."
fi
