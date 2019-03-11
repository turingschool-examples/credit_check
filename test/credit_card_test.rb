require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check'
require './lib/credit_card'

class CreditCardTest < Minitest::Test

  def setup
    @credit_card = CreditCard.new("5541808923795240", 15000)
  end

  def test_credit_card_exists
    assert_instance_of CreditCard, @credit_card
  end

  def test_credit_card_has_number
    assert_equal "5541808923795240", @credit_card.card_number
  end

  def test_credit_card_has_limt
    assert_equal 15000, @credit_card.limit
  end

  def test_last_four_numbers_of_credit_card
    assert_equal "5240", @credit_card.last_four
  end

  def test_credit_card_is_valid
    assert true, @credit_card.is_valid?
  end
end
