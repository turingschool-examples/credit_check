require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/credit_card'

class BankTest < Minitest::Test
  def test_it_exists
    bank = Bank.new("Wells Fargo")
    assert_instance_of Bank, bank
  end

  def test_it_has_a_name
    bank = Bank.new("Wells Fargo")
    assert_equal "Wells Fargo", bank.name
  end

  def test_it_knows_a_transaction_is_invalid_when_credit_card_is_invalid
    bank = Bank.new("Wells Fargo")
    credit_card = CreditCard.new("4024007106512380", 15000)
    assert_equal false, bank.valid_transaction?(100, credit_card)
  end

  def test_it_knows_a_transactions_is_invalid_when_the_amount_is_over_the_limit
    bank = Bank.new("Wells Fargo")
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal false, bank.valid_transaction?(20000, credit_card)
  end

  def test_it_knows_when_a_transaction_is_valid
    bank = Bank.new("Wells Fargo")
    credit_card = CreditCard.new("5541808923795240", 15000)
    assert_equal true, bank.valid_transaction?(11000, credit_card)
  end
end
