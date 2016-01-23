# board representation and move tracking

class String
  def colorize(fg, bg)
    "\033[1;#{fg};#{bg}#{self}\033[0;0m"
  end

  # red on black 31/107
  # red on white 31/108
  # blue on black 34/107
  # blue on white 34/108
end


class Board
  attr_accessor :board
  def initialize
    @board = [
        [0, -1, 0, -1, 0, -1, 0 ,-1],
        [-1, 0, -1, 0, -1, 0 ,-1, 0],
        [0, -1, 0, -1, 0, -1, 0 ,-1],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [1, 0, 1, 0, 1, 0 ,1, 0],
        [0, 1, 0, 1, 0, 1, 0 ,1],
        [1, 0, 1, 0, 1, 0 ,1, 0]
    ]
  end

  # takes player, return what boards states are available
  def moves(player)
    Board.new
  end

  # print out the current state of the boards
  def to_s
    @board.each_with_index.map do |row, i|
      row.map do |col|
        bg = col % 2 ? 107 : 108
        fg = 32
        "x".colorize fg, bg
        # red on black 31/107
        # red on white 31/108
        # blue on black 34/107
        # blue on white 34/108
      end.join
    end.join "\n"
  end
end

puts Board.new


