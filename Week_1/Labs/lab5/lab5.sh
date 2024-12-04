#!/bin/bash

file_path="$1"

if [ ! -f "$file_path" ]; then
  echo "File not found: $file_path"
  exit 1
fi

success_log="success.log"
fail_log="fail.log"
> "$success_log"
> "$fail_log"

line_number=0

echo -e "\n"

while read command; do
  ((line_number++))
  
  if eval "$command"; then
    echo "Line $line_number: $command" >> "$success_log"
  else
    echo "Line $line_number: $command" >> "$fail_log"
  fi
done < "$file_path"

echo -e "\nExecution complete"