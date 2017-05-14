
require_relative 'player'


class Board

  attr_reader :board_arr

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

    number -= 1 # convert to 0 index
    row_index, column_index = number / 3, number % 3
    @board_arr[row_index][column_index] = symbol

    draw_board
  end

  def get_actual_column(number) #get the column content before the user wants to set it
    number -= 1 # convert to 0 index
    row_index, column_index = number / 3, number % 3
    return @board_arr[row_index][column_index]

  end

  def not_set_yet?(column, symbol1, symbol2)
    if column != symbol1 && column != symbol2
      return true
    else
      return false

    end
  end

end
