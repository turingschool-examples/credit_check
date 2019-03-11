card_number = "5541808923795240"  # => "5541808923795240"

digits = card_number.split('').each_with_index do |number, index|  # => ["5", "5", "4", "1", "8", "0", "8", "9", "2", "3", "7", "9", "5", "2", "4", "0"]
  if  index.even?                                                  # => true, false, true, false, true, false, true, false, true, false, true, false, true, false, true, false
    number.to_i * 2                                                # => 10, 8, 16, 16, 4, 14, 10, 8
  end                                                              # => 10, nil, 8, nil, 16, nil, 16, nil, 4, nil, 14, nil, 10, nil, 8, nil
end                                                                # => ["5", "5", "4", "1", "8", "0", "8", "9", "2", "3", "7", "9", "5", "2", "4", "0"]


# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
