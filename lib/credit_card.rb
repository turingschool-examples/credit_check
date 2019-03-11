require './lib/credit_check'

class CreditCard
  attr_accessor :card_number, :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit       = limit
  end

  def is_valid?
    card = CreditCheck.new(card_number)
    card.luhn_algorithm
  end

  def last_four
    @card_number[-4..-1]
  end
end
