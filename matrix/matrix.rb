class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  private

  def create_matrix
    @matrix_array = []
    @finished_matrix = []
    @matrix_array = @matrix.scan(/\d+/).map(&:to_i)
    @matrix_size = @matrix_array.size / (1 + @matrix.count("\n"))
    @matrix_array.each_slice(@matrix_size) { |a| @finished_matrix << a }
  end

  public

  def rows
    create_matrix
    @finished_matrix
  end

  def columns
    create_matrix
    @matrix_columns = Array.new(@matrix_size) { Array.new(0) }
    @finished_matrix.each_with_index do |_element, i|
      @finished_matrix[i].each_with_index do |_element, j|
        @matrix_columns[j] << @finished_matrix[i][j]
      end
    end
    @matrix_columns
  end
end
