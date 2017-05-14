require_relative 'player'
require_relative 'game'

class Board

  def initialize
    @board_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end


  def draw_board
    @board_arr.each do |row|
      row.each do |column|
        print "|#{column}"
      end
      print "\n"
    end
  end

  def draw_on_board(number)

    @board_arr.each do |row|
      row.map do |column|

        if column == number
          column = game1.player.symbol
        else
          column = column
        end

      end

    end

  end

end
