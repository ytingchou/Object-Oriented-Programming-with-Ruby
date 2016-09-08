# Override the to_s method to create a user friendly print out of your
# object.
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
    "My cars is a #{@year} #{@model} with #{@color} color!"
  end

  def spray_paint(color)
    @color = color
  end

  def self.gas_mileage(gallons, miles)
    miles * 1.0 / gallons
  end

  def to_s
    info
  end
end


toyota = MyCar.new(2002, "black", "Toyota")
puts toyota
