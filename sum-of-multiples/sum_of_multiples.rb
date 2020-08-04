class SumOfMultiples
  attr_accessor :multiples_of

  def initialize(*multiples_of)
    @multiples_of = multiples_of
  end

  def to(number)
    sum_array = []
    @multiples_of.to_a.each do |n|
      (1...number).each do |i|
        sum_array << i if (i % n).zero?
      end
    end
    sum_array.uniq.sum
  end
end
