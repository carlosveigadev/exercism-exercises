class Matrix

  attr_reader :rows, :columns

  def initialize(matrix)
    @matrix = matrix
    @rows = create_matrix
    @columns = @rows.transpose
  end

  def create_matrix
    @matrix = @matrix.each_line.map(&:split)
    @matrix = @matrix.map { |n| n.map(&:to_i) }
  end
end
