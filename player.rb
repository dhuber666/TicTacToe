class Player

  attr_reader :name

  @wins = 0
  @losses = 0
  @ties = 0

  def initialize(name)

    @name = name

  end

  


  def win
    @wins +=1
  end

  def loss
    @losses +=1
  end

  def tie
    @ties +=1
  end



end
