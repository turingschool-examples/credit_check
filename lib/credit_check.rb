card_number = "5541808923795240"

card_num_as_integers = card_number.chars.map do |number|
  number.to_i
def even_nums
  #isolate each even number
  #card_number.chars.join(", ")
  card_number_as_integers.
  end
end

def odd_nums_doubled
  #isolate each odd number
  #this will be used in odd_num_to_single_digit
end

def odd_num_to_single_digit
  #check to see if .length >= 1
  #if it is, split the element and add them together
  #if it isn't >= 1, leave it
end

def sum_of_each_weighted_num
  #odd_nums_doubled + odd_num_to_single_digit
end

def valid_cc_num?
  #sum_of_each_weighted_num == 0
end

def output
  if valid_cc_num? == true
    "The number #{card_number} is valid!"
  else 
    "The number #{card_number} is invalid!"
  end
end
# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
