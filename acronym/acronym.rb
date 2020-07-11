module Acronym
  def self.abbreviate(string)
  string.sub!("-", " ")
  array = string.split(" ")
  acronym = []
  array.each { |i| acronym << i[0].capitalize() }
  p acronym.join.to_s
  end
end