# Add an accessor method to your MyCar class to change and view the color
# of your car. Then add an accessor method that allows you to view, but not
# modify, the year of your car.
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
end

toyota = MyCar.new(2002, "toyota", "black")
puts "Current color: " + toyota.color
puts "Change color to white"
toyota.color = "white"
puts "Current color: " + toyota.color
puts "The year of car: " + toyota.year.to_s
