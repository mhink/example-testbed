libdir = File.expand_path(File.join(File.dirname(__FILE__), 'lib'))
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'rubygems'
require 'bundler'

Bundler.require(:default)

require 'greeter'

task :default do
  Greeter.new.hello
  Greeter.new.shout_hello
  Greeter.new.break_before_shouting_hello
end
