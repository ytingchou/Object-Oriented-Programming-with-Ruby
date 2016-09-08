# You want to create a nice interface that allows you to accurately describe
# the action you want your program to perform. Create a method called
# spray_paint that can be called on an object and will modify the color of
# the car.
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
end

toyota = MyCar.new(2002, "toyota", "black")
puts "Current color: " + toyota.color
puts "Spray paint red color"
toyota.spray_paint("red")
puts "Current color: " + toyota.color
puts "The year of car: " + toyota.year.to_s
