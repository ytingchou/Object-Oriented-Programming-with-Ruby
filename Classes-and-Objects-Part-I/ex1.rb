# Create a class called MyCar. When you initialize a new instance or object
# of the class, allow the user to define some instance variables that tell us
# the year, color, and model of the car. Create an instance variable that is set
# to 0 during instantiation of the object to track the current speed of the
# car as well. Create instance methods that allow the car to speed up, brake,
# and shut the car off.
class MyCar
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
puts toyota.info
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
