# pass two arguments on initialization (string of the credit card number; integer representing the limit)
require './lib/credit_check'

class CreditCard 
  attr_reader :card_number, :limit 

  def initialize(card_number, limit)
    @card_number =card_number
    @limit = limit
  end 

  def card_number
    @card_number
  end

  def limit
    @limit
  end

  def is_valid?
    valid_card(@card_number) == 0 ? true : false
  end

  def last_four
    # returns a string of the last four digits
  end 

end