#!/bin/bash

exec > >(ruby f.rb) 2>&1

echo "tty?"
tty

for i in $(seq 1 500); do
  printf .
  sleep 0.01
done
