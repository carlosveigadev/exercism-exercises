module Year
  def self.leap?(year)
    return (year%400).zero? ? true : (year%100).zero? ? false : (year%4).zero? ? true : false
  end
end