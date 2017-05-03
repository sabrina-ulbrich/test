require 'pty'

cmd = ARGV.join(' ')
parent, child = PTY.open
child.close # we don't need the child
pid = spawn cmd, in: $stdin, out: $stdout
