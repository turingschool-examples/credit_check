
class CreditCard
  attr_reader :number, :limit, :last_four, :check_sum
  def initialize(number, limit)
    @number = number
    @limit = limit
    @last_four = number[-4..-1]
  end

  def is_valid?
    luhn_output = @number.split('').map.with_index do |num, i|
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

    luhn_output.sum % 10 == 0
  end
end
