#!/bin/bash

directory="$1"

for file in "$directory"/*; do

  if [ ! -f "$file" ]; then
    continue
  fi

  dir=$(dirname "$file")
  base=$(basename "$file")
  lowercase_base=$(echo "$base" | tr '[:upper:]' '[:lower:]')

  if [ "$base" != "$lowercase_base" ]; then
    mv "$file" "$dir/$lowercase_base"
    echo "Renamed: '$base' -> '$lowercase_base'"
  fi
done

echo "Conversion to lowercase completed."