require_relative 'player'

class Game

  attr_reader :player1, :player2

  


  def initialize
    @player1 = Player.new(set_player_name)
    @player2 = Player.new(set_player_name)
  end

  def start # should set up the Game

    #create player1 and player2

    draw_game

  end

  def set_player_name
    puts "Please enter your name"
    @name = gets.chomp.upcase
    return @name
  end

  def draw_game #Here we draw our game with a 3 dimensional array

    userInput = "go"

    arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

    while userInput != "exit"

      arr.each do |first|

        first.map! do |second|

          if userInput.to_i == second
            second = "X"
          end

          print "|#{second}|"
          second

        end

        print "\n"

      end

      puts "Type quit for exiting game, or a number"
      userInput = gets.chomp
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
