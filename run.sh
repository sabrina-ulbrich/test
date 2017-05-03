#!/bin/bash

# exec > >(ruby filter.rb) 2>&1
exec > >(ruby pty.rb ruby filter.rb) 2>&1

tty

for i in $(seq 1 100); do
  printf .
  sleep 0.01
done
