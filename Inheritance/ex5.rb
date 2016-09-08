# Move all of the methods from the MyCar class that also pertain to the
# MyTruck class into the Vehicle class. Make sure that all of your previous
# method calls are working when you are finished.
module Carryable
  def can_carry?(pounds)
    pounds < 1000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :year

  @@number_of_created_objects = 0

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_created_objects += 1
  end

  def self.number_of_created_objects
    @@number_of_created_objects
  end

  def self.gas_mileage(gallons, miles)
    miles * 1.0 / gallons
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

  def spray_paint(color)
    @color = color
  end
end

class MyCar < Vehicle
  NUMBER_OF_TIRES = 4

  def info
    "My cars is a #{@year} #{@model} with #{@color} color!"
  end


  def to_s
    info
  end
end

class MyTruck < Vehicle
  include Carryable

  NUMBER_OF_TIRES = 6
end

toyota = MyCar.new(2002, "toyota", "black")
puts "Spead up 60 ==>"
toyota.speed_up(60)
puts "Current speed is " + toyota.speed.to_s
puts "Spead up 40 ==>"
toyota.speed_up(40)
puts "Current speed is " + toyota.speed.to_s
puts "Brake 60 <=="
toyota.brake(60)
puts "Current speed is " + toyota.speed.to_s
puts "Brake 40 <=="
toyota.brake(40)
puts "Current speed is " + toyota.speed.to_s
puts "<< Shut down the car >>"
toyota.shut_down
puts "Current speed is " + toyota.speed.to_s

puts ""

puts "Current color: " + toyota.color
puts "Spray paint red color"
toyota.spray_paint("red")
puts "Current color: " + toyota.color

puts ""

miles_per_gallon = MyCar.gas_mileage(10,125)
puts "#{miles_per_gallon} miles per gallon of gas"

puts ""

puts "=== Vehicle ==="
puts Vehicle.ancestors
puts "=== MyCar ==="
puts MyCar.ancestors
puts "=== MyTruck ==="
puts MyTruck.ancestors
