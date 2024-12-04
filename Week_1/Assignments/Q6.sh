#!/bin/bash

trap 'echo "Caught SIGINT (Ctrl+C)! Exiting gracefully."; exit 1' SIGINT


echo "Press Ctrl+C to interrupt."

for i in {1..10}; do
  echo "Processing... $i"
  sleep 1
done

echo "Completed without interruption."