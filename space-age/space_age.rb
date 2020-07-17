class SpaceAge
  attr_accessor :age
  @@EARTH_YEARS = 31557600.0
  @@YEARS = {:mercury => @@EARTH_YEARS * 0.2408467, :venus => @@EARTH_YEARS * 0.61519726, :mars => @@EARTH_YEARS * 1.8808158,  :jupiter => @@EARTH_YEARS * 11.862615, :saturn => @@EARTH_YEARS * 29.447498, :uranus => @@EARTH_YEARS * 84.016846, :neptune => @@EARTH_YEARS * 164.79132}
  

  def initialize(age)
    @age = age.to_f
  end

  def on_earth
    (@age / @@EARTH_YEARS).ceil(2)
  end

  def on_mercury
    (@age / @@YEARS[:mercury]).ceil(2)
  end

  def on_venus
    (@age / @@YEARS[:venus]).ceil(2)
  end

  def on_mars
    (@age / @@YEARS[:mars]).ceil(2)
  end

  def on_jupiter
    (@age / @@YEARS[:jupiter]).ceil(2)
  end

  def on_saturn
    (@age / @@YEARS[:saturn]).ceil(2)
  end

  def on_uranus
    (@age / @@YEARS[:uranus]).ceil(3)
  end

  def on_neptune
    (@age / @@YEARS[:neptune]).ceil(2)
  end
 
end
