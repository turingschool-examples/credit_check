#invalid tests
#regular card #
# card_number = "5554180192379524040240071065123806011797668868728"
#valid test
#regular card #
card_number = "554180892379524040240071365123806011797668867828"


luhn_output = card_number.split('').map.with_index do |num, i|
  if i.even?
    even_i_num = num.to_i * 2
    if even_i_num > 9
      even_i_num = even_i_num.to_s.split('')
    end
    even_i_num
  else
    num.to_i
  end
end


luhn_output.map! do |num|
  if num.class == Array
    num.inject(0){|sum,x| sum + x.to_i }
  else
    num
  end
end

if luhn_output.sum % 10 == 0
  p "The number #{luhn_output.join} is valid!"
else
  p "The number #{luhn_output.join} is invalid!"
end
