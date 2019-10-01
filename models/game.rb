class Game

  def Game.play(hand1, hand2)
    if (hand1 =="rock" || hand2 =="rock") && (hand1 == "scissors" || hand2 == "scissors")
      return "Rock wins"
    elsif (hand1 =="rock" || hand2 =="rock") && (hand1 == "paper" || hand2 == "paper")
      return "Paper wins"
    else (hand1 =="scissors" || hand2 =="scissors") && (hand1 == "paper" || hand2 == "paper")
      return "Scissors wins"
    end
  end
end
