# lib/programmer.rb

class Programmer
	
  include Payable
	include CaffeineConsumer

  def program
    consume_caffeine
    do_wonderful_things_with_computers
  end

  def do_wonderful_things_with_computers
  end
end
