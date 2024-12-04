#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

input_file="$1"
output_file="unique_${input_file}"

sort "$input_file" | uniq > "$output_file"

echo "Duplicate lines removed. The output is saved in '$output_file'."
