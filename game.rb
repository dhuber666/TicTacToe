require_relative 'player'
require_relative 'board'


class Game

  attr_reader :player

  def initialize
    @player1 = Player.new()
    @player2 = Player.new()
    @board = Board.new()
    @player = @player1
  end

  def set_current_player
    if @player == @player1
      @player = @player2
    else
      @player = @player1
    end



  end

  def change_board


    until win?(@board.board_arr, @player1.symbol, @player2.symbol, @player1, @player2)
      #with this method we check if the number the users provides is not yet
      #set in the column
      if @board.not_set_yet?(@board.get_actual_column(@player.player_turn), @player1.symbol, @player2.symbol)
        @board.draw_on_board(@player.number, @player.symbol)
        set_current_player
      else
        puts "Sorry that place is allready used, please try a different number"
      end
    end
  end

  def win? (array, symbol1, symbol2, player1, player2)

    # set up an array with winning conditions with index numbers
    win_conditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6]]
    winner = nil

    win_case_1 = win_conditions.any? do |row|
      row.all? do |column|
        array.flatten[column] == symbol1
      end
    end

    win_case_2 = win_conditions.any? do |row|
      row.all? do |column|
        array.flatten[column] == symbol2
      end
    end

    win_case_3 = array.flatten.all? {|column| column == (symbol1 || symbol2)}


    if win_case_1
      player1.won = true
      return win_case_1

    elsif win_case_2
      player2.won = true
      return win_case_2

    elsif win_case_3
      return win_case_3
    else
      return false
    end

  end

  def game_over(player1, player2)

    if player1.won
      puts "The game is over and #{@player1.name} has won"
    elsif player2.won
      puts "The game is over and #{@player2.name} has won"
    else
      puts "The game is over and no one has one. It's a tie"
    end
  end

  def start
    @board.draw_board
    change_board
    game_over(@player1, @player2)

  end


end

game1 = Game.new
game1.start

#notizen:

=begin

  The Draw function should obviously draw the board.
  It should draw it 3 x 3 with numbers starting from 1 (top left),
  to 9 (bottom right)

  A user can type in the number and would change the example: 1 to a  X or O
  Then the second player can choose a number but gets an error when he also
  wants to change the 1 (because it's already changed)

  Furthermore the game should know when a winning or loosing condition is met
  winning is 3 symbols of the same type (X or O) in a row vertically and horizontally
  and diagonaly

  if all 9 numbers are exchanged with symbols the game is over with a tie

  Now how to implement this all:

  Try it out with an array first.
  Make a two dimensional array like so:

  [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

  Now loop through the array and puts the number.


=end
