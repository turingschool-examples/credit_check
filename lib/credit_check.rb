card_number = "5541808923795240"


  def format_card_number(card_number)
    card_number.chars.map do |number|
      number.to_i
    end
  end
  # given_array output: [5, 5, 4, 1, 8, 0, 8, 9, 2, 3, 7, 9, 5, 2, 4, 0]


  def odd_index_nums_doubled(given_array) #output from format_card_number
    given_array.each_with_index do |num, index|
      if index.even?
        given_array[index] = num * 2
      end
    end
      # output: [10, 5, 8, 1, 16, 0, 16, 9, 4, 3, 14, 9, 10, 2, 8, 0]
  end

  def array_of_single_digits(nums) #output from odd_index_nums_doubled
    nums.map! do |num|  #might need to use a bang!
      if num > 9 
        num.digits.sum
      else
        num
      end
    end
    #output:
  end

  def sum_array_of_single_digits(array) #output from array_of_single_digits
    array.sum
  end

  def array_valid?(sum_number)
    sum_number % 10 == 0
  end

  def luhn_algorithm(cc_num)
    step_1 = format_card_number(cc_num)
    step_2 = odd_index_nums_doubled(step_1)
    step_3 = array_of_single_digits(step_2)
    step_4 = sum_array_of_single_digits(step_3)
    step_5 = array_valid?(step_4)
    if step_5 == true
      "The number #{cc_num} is valid!"
    else 
      "The number #{cc_num} is invalid!"
    end
  end

  p luhn_algorithm(card_number)

  #Valid: 
  test1 = "5541808923795240" 
  test2 = "4024007136512380"
  test3 = "6011797668867828"

  #Invalid: 
  test4 = "5541801923795240" 
  test5 = "4024007106512380" 
  test6 = "6011797668868728"

  p luhn_algorithm(test1)
  p luhn_algorithm(test2)
  p luhn_algorithm(test3)
  p luhn_algorithm(test4)
  p luhn_algorithm(test5)
  p luhn_algorithm(test6)
  # def valid_cc_num?
    #sum_of_each_weighted_num == 0
  # end

#   def output
#     if valid_cc_num? == true
#       "The number #{card_number} is valid!"
#     else 
#       "The number #{card_number} is invalid!"
#     end
# end

# end
# Your Luhn Algorithm Here

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"


















 # def odd_num_to_single_digit
  #   if odd_nums_doubled.char.length >1
      
  #   end
    # expected []
    #check to see if .length >= 1
    #if it is, split the element and add those split elements together
    #if it isn't >= 1, leave it
  # end























  #Turing definition of Luhn different than the actual algorithm so I did the even numbers (or odd index numbers) in order to be using/starting with the last integer `0`
  # def even_nums
    # expected  [5, 1, 0, 9, 3, 9, 5, 2, 0]
  #   card_number_as_integers.each_with_index do |num, index|
  #     puts num if index.odd?
  # end


  # def odd_nums
    # expected 54882754
  #   card_number_as_integers.each_with_index do |num, index|
  #     puts num if index.even? 
  #   end
  # end

  # def even
  
  #   even_nums.map do |num|
  #     num * 2
  #   end
    # odd_num_single_digit: [5, 1, 0, 9, 3, 9, 5, 2, 0]
    # doubled [10, 2, 0, 18, 6, 18, 10, 4, 0]
    # 
    # (note, ODD numbers are EVEN index numbers))
    #isolate each odd number
    #this will be used in odd_num_to_single_digit
  # end

  # def odd_num_to_single_digit
  #   if odd_nums_doubled.char.length >1
      
  #   end
    # expected []
    #check to see if .length >= 1
    #if it is, split the element and add those split elements together
    #if it isn't >= 1, leave it
  # end

  # def sum_of_each_weighted_num
    #odd_nums_doubled + odd_num_to_single_digit
  # end


