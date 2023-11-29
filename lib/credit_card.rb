class CreditCard
  attr_reader :card_number,
              :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def last_four
    @card_number[-4..-1]
  end

  def is_valid?
    luhn_algorithm(@card_number)
  end
end
