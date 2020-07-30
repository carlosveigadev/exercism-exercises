class Squares
  def initialize(n)
    @n = n
  end

  def square_of_sum
    sum_squared = Array.new(@n) { |i| i + 1 }
    sum_squared.sum**2
  end

  def sum_of_squares
    squared_sum = Array.new(@n) { |i| (i + 1)**2 }
    squared_sum.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end


# class Squares
#   attr_accessor :difference, :square_of_sum, :sum_of_squares

#   def initialize(value)
#     @sum_of_squares = (1..value).sum { |it| it ** 2 }
#     @square_of_sum = (1..value).sum ** 2
#     @difference = (@sum_of_squares - @square_of_sum).abs
#   end
# end