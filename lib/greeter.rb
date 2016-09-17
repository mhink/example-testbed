require 'can_shout'

class Greeter
  include CanShout

  def hello
    puts "Hello, world!"
  end
end
