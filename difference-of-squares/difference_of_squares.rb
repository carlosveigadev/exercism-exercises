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
