require './array-list.rb'
require './linked-list.rb'

class Lotto
  def initialize
    # we can change this to ArrayList if we need to.(changing implementation(underlying structure)--but interface (list of methods) should do the same thing)
    @ticket = LinkedList.new
    while @ticket.size < 5
      auto_num = rand(55) + 1
      if !@ticket.include?(auto_num)
        @ticket.add(auto_num)
      end
    end
  end

  def display_ticket
    @ticket.sort
    @ticket.display
  end
end

lotto_sim = Lotto.new

puts "Your ticket is......"
lotto_sim.display_ticket
