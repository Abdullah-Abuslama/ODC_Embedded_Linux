#!/bin/bash

read -p "Enter the word to search: " word
read -p "Enter the file name: " file_name

if [ ! -f "$file_name" ]; then
  echo "File does not exist!"
  exit 1
fi

count=$(grep -o -w "$word" "$file_name" | wc -l)

# Display result
echo "The word '$word' appears $count times in the file '$file_name'."
