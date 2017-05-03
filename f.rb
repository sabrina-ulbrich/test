#!/usr/bin/env ruby

$stdin.sync = true
$stdout.sync = true

while !$stdin.eof? && char = $stdin.readchar
  print char.gsub('.', '*')
end
