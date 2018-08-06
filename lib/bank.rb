class Bank
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def valid_transaction?(amount, credit_card)
    if credit_card.limit >= amount && credit_card.is_valid?
      true
    else
      false
    end
  end
end
