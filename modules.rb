# Modules allows re-use code, without inheritance

module Speedometer
  def speed
    "We are going #{@speed}"
  end
end

module Movable
  def go
    @speed += 10

  end

  def brake
    @speed = 0
  end

  def speed
    "BOOOO"

  end
end

class Car
  include Movable
  include Speedometer
end

class Bike
  include Movable
end
