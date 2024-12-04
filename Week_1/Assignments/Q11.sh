#!/bin/bash

numbers=(10 20 30 40 50)

sum=0

for num in "${numbers[@]}"; do
  sum=$((sum + num))
done

echo "The sum of the array elements is: $sum"
