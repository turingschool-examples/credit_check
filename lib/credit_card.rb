
class CreditCard
  attr_reader :number, :limit, :last_four
  def initialize(number, limit)
    @number = number
    @limit = limit
    @last_four = number[-4..-1]
  end

  def double_even_index_nums
    @luhn_output = @number.split('').map.with_index do |num, i|
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
  end

  def double_odd_index_nums
    @luhn_output = @number.split('').map.with_index do |num, i|
      if i.odd?
        even_i_num = num.to_i * 2
        if even_i_num > 9
          even_i_num = even_i_num.to_s.split('')
        end
        even_i_num
      else
        num.to_i
      end
    end
  end

  def add_double_nums
    @luhn_output.map! do |num|
      if num.class == Array
        num.inject(0){|sum,x| sum + x.to_i }
      else
        num
      end
    end
  end

  def is_valid?
    if @number.length.even?
      double_even_index_nums
    else
      double_odd_index_nums
    end
    add_double_nums
    @luhn_output.sum % 10 == 0
  end

  def check_sum
    p @luhn_output.sum
  end
end
