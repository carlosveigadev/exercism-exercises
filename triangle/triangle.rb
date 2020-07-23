=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end
class Triangle
  def initialize(triangle)
    @triangle = triangle
  end

  def get_side
    @sideA = @triangle[0]
    @sideB = @triangle[1]
    @sideC = @triangle[2]
  end
  
  def is_triangle?
    @sorted = @triangle.sort
    return true if (@sorted[0] + @sorted[1]) < @sorted[2] || @sorted.any? { |num| num == 0 }
  end


  def equilateral?
    get_side
    if is_triangle? 
      false
    else @sideA == @sideB ? @sideB == @sideC : false
      end
  end

  def isosceles?
    get_side
    unless is_triangle?
      @sideA == @sideB || @sideA == @sideC ? true : (@sideB == @sideC ? true : false)
    end 
  end

  def scalene?
    get_side
    unless is_triangle?
      !isosceles?
    end

  end
end

