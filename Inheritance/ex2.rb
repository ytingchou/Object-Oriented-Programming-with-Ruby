# Add a class variable to your superclass that can keep track of the number
# of objects created that inherit from the superclass. Create a method to
# print out the value of this class variable as well.
class Vehicle
  @@number_of_created_objects = 0

  def initialize
    @@number_of_created_objects += 1
  end

  def self.number_of_created_objects
    @@number_of_created_objects
  end

  def self.gas_mileage(gallons, miles)
    miles * 1.0 / gallons
  end
end

class MyCar < Vehicle
  NUMBER_OF_TIRES = 4

  attr_accessor :color
  attr_reader :year
  def initialize(year, color, model)
    super()
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

mycar = MyCar.new(2002, "black", "toyota")
mytruck = MyTruck.new

p Vehicle.number_of_created_objects
