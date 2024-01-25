card_number = "5541808923795240"
valid_numbers =  ["5541808923795240", "4024007136512380", "6011797668867828"]
invalid_numbers =  ["5541801923795240", "4024007106512380", "6011797668868728"]

# Your Luhn Algorithm Here

def valid_card(string)
  split = string.split('')
  numbers = split.map do |letter|
    letter.to_i
  end 
  
  p numbers

  times_numbers = []
  numbers.each_with_index do |value, index|
    number = if index.even?
                value * 2
              else
                value
              end 
    
    if number >= 10 
      number = number.to_s.split('').map(&:to_i)
      number = number.sum
    end 
    times_numbers.push(number)
  end

  result = times_numbers.sum % 10
  p times_numbers
  p result
end 

valid_card(card_number)

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
