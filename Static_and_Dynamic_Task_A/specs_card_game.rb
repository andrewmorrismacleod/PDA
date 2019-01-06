require 'minitest/autorun'
require 'minitest/rg'
require_relative 'card'
require_relative 'card_game'

class CardGameTest<MiniTest::Test

  def setup
    @cardgame1 = CardGame.new
    @card1 = Card.new("Heart", 10)
    @card2 = Card.new("Club", 1)
    @card3 = Card.new("Spade", 6)
    @cards = [@card1, @card2, @card3]
  end

  def test_card_suit
    assert_equal("Heart", @card1.suit)
  end

  def test_card_value
    assert_equal(1, @card2.value)
  end

  def test_check_for_ace__true
    assert_equal(@cardgame1.check_for_Ace(@card2),true)
  end

  def test_check_for_ace_false
    assert_equal(@cardgame1.check_for_Ace(@card1),false)
  end

  def test_check_highest_card__card1_greater_than_card2
    assert_equal(@cardgame1.highest_card(@card1, @card2),@card1)
  end

  def test_check_highest_card__card2_less_than_card3
    assert_equal(@cardgame1.highest_card(@card2, @card3), @card3)
  end

  def test_total_value
    assert_equal(CardGame.cards_total(@cards), "You have a total of 17")
  end

end
