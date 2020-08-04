class Anagram
  attr_accessor :sorted_word, :sorted_array, :index_array
  def initialize(word)
    @word = word
  end

  def match(array_of_words)
    @array_of_words = array_of_words
    @match_array = []
    sort_word
    sort_array
    find_index
    index_array.each { |i| @match_array << array_of_words[i] }
    same_word?
  end

  private

  def sort_word
    @sorted_word = @word.downcase.chars.sort.join
    @sorted_word
  end

  def sort_array
    @sorted_array = @array_of_words.map { |n| n.downcase.chars.sort.join }
    @sorted_array
  end

  def find_index
    @index_array = []
    @sorted_array.each_index { |i| index_array << i if @sorted_word == @sorted_array[i] }
    @index_array
  end

  def same_word?
    @match_array = @match_array.reject { |n| n.downcase == @word.downcase }
  end
end
