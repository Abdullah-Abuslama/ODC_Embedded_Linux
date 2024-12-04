#!/bin/bash

factorial() {
  local num=$1
  local result=1

  if [ "$num" -lt 0 ]; then
    echo "Error: Factorial is not defined for negative numbers."
    return 1
  fi

  for ((i = 1; i <= num; i++)); do
    result=$((result * i))
  done

  echo "The factorial of $num is $result"
}

read -p "Enter a number: " number

factorial $number
