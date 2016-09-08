# Write a method called age that calls a private method to calculate the
# age of the vehicle. Make sure the private method is not available from
# outside of the class. You'll need to use Ruby's built-in Time class to help.
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

  def age
    calculate_age
  end

  private

  def calculate_age
    Time.now.year - self.year
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
puts "My car's age: " + toyota.age.to_s
