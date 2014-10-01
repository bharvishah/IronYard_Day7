class Vehicle
  def go
    @speed += 10

  end

  def brake
    @speed = 0
  end

  def speed
    "are are going speed #{speed}"

  end
end

# Car inherits from the vehicle

class Car < Vehicle


end

class Bike < Vehicle

  def speed
    " I am on Bike speed !"

  end

end
