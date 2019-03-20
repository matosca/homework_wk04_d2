class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def round_one()
    if (@player1 == "rock" && @player2 == "scissors")
      return "Rock"
    end
  end

  def round_two()
    if (@player1 == "paper" && @player2 == "rock")
      return "Paper"
    end
  end

  def round_three()
    if (@player1 == "scissors" && @player2 == "paper")
      return "Scissors"
    end
  end

  def draw()
    if (@player1 == "rock1" || @player2 == "rock2")
      return "Draw!"
    end
  end


end
