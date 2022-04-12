class SpaceAge
  PLANET_CONVERSION = {
    earth: 31557600,
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
  }

  def initialize(age)
    @age = age
  end

  def on_earth
    @age / PLANET_CONVERSION[:earth].to_f
  end

  def on_mercury
    on_earth / PLANET_CONVERSION[:mercury]
  end
  def on_venus
    on_earth / PLANET_CONVERSION[:venus]
  end
  def on_mars
    on_earth / PLANET_CONVERSION[:mars]
  end
  def on_jupiter
    on_earth / PLANET_CONVERSION[:jupiter]
  end
  def on_saturn
    on_earth / PLANET_CONVERSION[:saturn]
  end
  def on_uranus
    on_earth / PLANET_CONVERSION[:uranus]
  end
  def on_neptune
    on_earth / PLANET_CONVERSION[:neptune]
  end
end