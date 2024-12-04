#!/bin/bash

while true; do

  read -p "Enter the first number: " num1
  read -p "Enter the second number: " num2

  echo "Choose an operation (+, -, *, /):"
  read operation

  case $operation in
    +)
      result=$(echo "$num1 + $num2" | bc)
      echo "The result of $num1 + $num2 is: $result"
      ;;
    -)
      result=$(echo "$num1 - $num2" | bc)
      echo "The result of $num1 - $num2 is: $result"
      ;;
    \*)
      result=$(echo "$num1 * $num2" | bc)
      echo "The result of $num1 * $num2 is: $result"
      ;;
    /)
      result=$(echo "$num1 / $num2" | bc)
      echo "The result of $num1 / $num2 is: $result"
      ;;
    *)
      echo "Invalid operation. Please enter one of +, -, *, /."
      continue
      ;;
  esac

  read -p "Perform another calculation? (yes/no): " choice
  if [ "$choice" != "yes" ]; then
    echo "Exiting the calculator. Goodbye!"
    break
  fi
done
