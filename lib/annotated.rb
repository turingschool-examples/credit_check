class CreditCheck
  attr_accessor :card_number

  def initialize(card_number) # initialized card number
    @card_number = card_number # created instance variable
  end

  def luhn_algorithm
    sum = 0 # sum starts at 0
    card_number.chars.each_with_index do |numbers, index| # individula strings to a numbered index
      n = numbers.to_i # changed strings to numbers
      sum += index % 2 == 1 ? n : n * 2 > 9 ? ( n * 2 - 9) : n * 2 # finds odds, doubles evens, sums evens over 9
    end
    sum % 10 == 0  # ? "The number #{card_number} is valid!" : "The number #{card_number} is invalid!"
  end # true or false if divisible by 10

# I did another luhn_algorithm to experiment :)
  def luhn_algorithm_two
    sum = 0
    numbers = card_number.chars.map(&:to_i)
    evens, odds = numbers.partition.with_index do |number, index| # partition creates 2 arrays one with odds and the other with evens
    sum += index.odd? ?  number : number * 2 > 9 ? ( number * 2 - 9 ) : number * 2
  end
    sum % 10 == 0  #? "The number #{card_number} is valid!" : "The number #{card_number} is invalid!"
  end
end
