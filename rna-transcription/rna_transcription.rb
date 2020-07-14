module Complement
  def self.of_dna(dna)
    rna = ""
    dna.each_char do
      |n|
      case n
      when "G"
        rna.insert(-1, "C")
      when "C"
        rna.insert(-1, "G")
      when "T"
        rna.insert(-1, "A")
      when "A"
        rna.insert(-1, "U")
      else
        return " "
      end
    end
    rna
  end
end

=begin
module Complement
  def self.of_dna(dna)
    dna.tr("CGTA", "GCAU")
  end
end
=end
