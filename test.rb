#test document for my pseudo code

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
