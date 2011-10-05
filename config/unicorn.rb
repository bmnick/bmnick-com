worker_processes 1
working_directory "/var/www/nesta/"

# This loads the application in the master process before forking
# worker processes
# Read more about it here:
# http://unicorn.bogomips.org/Unicorn/Configurator.html
preload_app true
GC.respond_to?(:copy_on_write_friendly=) and
  GC.copy_on_write_friendly = true

timeout 30

# This is where we specify the socket.
# We will point the upstream Nginx module to this socket later on
listen "/var/www/nesta/tmp/sockets/unicorn.sock", :backlog => 64

pid "/var/www/nesta/tmp/pids/unicorn.pid"

# Set the path of the log files inside the log folder of the testapp
stderr_path "/var/www/nesta/log/unicorn.stderr.log"
stdout_path "/var/www/nesta/log/unicorn.stdout.log"

