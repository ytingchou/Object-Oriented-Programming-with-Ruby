# Add a class method to your MyCar class that calculates the gas mileage of
# any car.
class MyCar
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
    "My cars is #{@year} #{@model} with #{@color} color!"
  end

  def spray_paint(color)
    @color = color
  end

  def self.gas_mileage(gallons, miles)
    miles * 1.0 / gallons
  end
end


miles_per_gallon = MyCar.gas_mileage(10,125)
puts "#{miles_per_gallon} miles per gallon of gas"
