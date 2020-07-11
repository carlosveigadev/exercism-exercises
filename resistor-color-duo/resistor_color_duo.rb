module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  def self.value(colors)
    code_one = COLORS.index { |x| x == colors[0].downcase }
    code_two = COLORS.index { |x| x == colors[1].downcase }
    true_code = code_one.to_s + code_two.to_s
    true_code.to_i
  end
end
