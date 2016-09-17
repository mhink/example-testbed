# Add the /lib directory to the Ruby load path. $LOAD_PATH is a global Ruby
# object.
libdir = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

# Require Bundler, and tell it to read our Gemfile and load all the dependencies
# listed therein.
require 'rubygems'
require 'bundler'
Bundler.require(:default)

# Require a Ruby file contained in lib/. Since lib/ is on our $LOAD_PATH, we
# don't have to give an absolute path.
require 'greeter'

# Define the default Rake task: this is what happens when we just run `rake`.
task :default do
  Greeter.new.hello
  Greeter.new.shout_hello
  Greeter.new.break_before_shouting_hello
end

# I like to define a "console" task, which will simply fire up pry. When my
# console comes up, I'll have access to the 'greeter' variable.
task :console do
  greeter = Greeter.new
  binding.pry

  puts "Done."
end
