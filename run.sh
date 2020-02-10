#!/bin/bash

# exec > >(ruby f.rb) 2>&1
exec > >(ruby pty.rb ruby f.rb) 2>&1

tty

for i in $(seq 1 100); do
  printf .
  sleep 0.01
done
