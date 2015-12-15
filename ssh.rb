require 'net/ssh'

HOST = '127.0.0.1' 
USER = 'user' 
PASS = 'pass' 
 
Net::SSH.start( HOST, USER, :password => PASS ) do|ssh| 

command = ssh.exec!('ls') 

puts command

end