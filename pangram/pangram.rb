module Pangram
  def self.pangram?(sentence)
    abc = 'abcdefghijklmnopqrstuvwxyz'
    abc_array = abc.split('')
    abc_array.all? { |c| sentence.downcase.include?(c) }
  end
end