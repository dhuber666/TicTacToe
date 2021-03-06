


class Player

  attr_reader :symbol, :name, :number
  attr_accessor :won



  def initialize
    @symbol = get_symbol
    @name = get_name
    @won = nil
  end


  def get_symbol
    puts "Please enter the symbol you like to use: "
    @symbol = gets.chomp.to_sym
    return @symbol
  end

  def get_name
    puts "Please enter your name: "
    @name = gets.chomp
    return @name
  end

  def player_turn
    puts "#{@name} Please enter a number: "
    @number = gets.chomp.to_i
    return @number

  end

end
