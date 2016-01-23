# board representation and move tracking

require "colored"

class Board
  def initialize
    @board = Array.new(8).map!{ Array.new(8) }
  end

  # takes player, return what boards states are available
  def moves(player)
  end

  # print out the current state of the boards
  def to_s
  end
end



