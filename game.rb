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

  def start
    @board.draw_board
    while true

      @board.draw_on_board(@player.player_turn, @player.symbol)
      set_current_player
    end
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
