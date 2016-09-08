# Create a superclass called Vehicle for your MyCar class to inherit from
# and move the behavior that isn't specific to the MyCar class to the
# superclass. Create a constant in your MyCar class that stores information
# about the vehicle that makes it different from other types of Vehicles.
#
# Then create a new class called MyTruck that inherits from your superclass
# that also has a constant defined that separates it from the MyCar class in
# some way.
class Vehicle
  def self.gas_mileage(gallons, miles)
    miles * 1.0 / gallons
  end
end

class MyCar < Vehicle
  NUMBER_OF_TIRES = 4

  attr_accessor :color
  attr_reader :year
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up(delta)
    @speed += delta
  end

  def brake(delta)
    @speed -= delta
  end

  def shut_down
    @speed = 0
  end

  def speed
    @speed
  end

  def info
    "My cars is a #{@year} #{@model} with #{@color} color!"
  end

  def spray_paint(color)
    @color = color
  end

  def to_s
    info
  end
end

class MyTruck < Vehicle
  NUMBER_OF_TIRES = 6
end
