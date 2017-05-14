
require_relative 'player'


class Board

  def initialize
    @board_arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
  end


  def draw_board(array = @board_arr)
    array.each do |row|
      row.each do |column|
        print "|#{column}"
      end
      print "\n"
    end
  end

  def draw_on_board(number, symbol)

    @new_array = @board_arr.map do |row|
      
      row.map do |column|

        row.map {  |column| column == number ? symbol : column  }

      end

    end

    draw_board(@new_array)

  end

end
