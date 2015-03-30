require 'can_shout'

class Greeter
  include CanShout

  def hello
    puts "Hello, world!"
  end

  def break_before_shouting_hello
    binding.pry
    shout_hello
  end
end
