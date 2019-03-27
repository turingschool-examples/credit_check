require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_card'
require 'pry'

class CreditCardTest < Minitest::Test
  attr_reader :credit_card, :credit_card_invalid, :amex_credit_card, :amex_credit_card_invalid
  def setup
    @credit_card = CreditCard.new("5541808923795240", 15000)
    @credit_card_invalid = CreditCard.new("5554180192379524040240071065123806011797668868728", 20000)
    @amex_credit_card = CreditCard.new("342804633855673", 15000)
    @amex_credit_card_invalid = CreditCard.new("342801633855673", 15000)
  end
  def test_it_exists
    assert_instance_of CreditCard, credit_card
  end

  def test_it_has_attributes
    assert_equal "5541808923795240", credit_card.number
    assert_equal 15000, credit_card.limit
  end

  def test_it_can_return_last_four_of_card
    assert_equal "5240", credit_card.last_four
    assert_equal "8728", credit_card_invalid.last_four
  end

  def test_it_can_tell_if_card_is_valid
    assert credit_card.is_valid?
    refute credit_card_invalid.is_valid?
  end

  def test_it_can_check_amex_cards
    assert amex_credit_card.is_valid?
    refute amex_credit_card_invalid.is_valid?
  end
end
