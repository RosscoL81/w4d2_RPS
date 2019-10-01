require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def test_game
    assert_equal("Rock wins", Game.play("rock","scissors"))
    assert_equal("Rock wins", Game.play("scissors", "rock"))
    assert_equal("Scissors wins", Game.play("scissors", "paper"))
    assert_equal("Scissors wins", Game.play("paper", "scissors"))
    assert_equal("Paper wins", Game.play("paper", "rock"))
    assert_equal("Paper wins", Game.play("rock", "paper"))
  end
end
