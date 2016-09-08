class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other)
    grade > other.grade
  end

  protected
  def grade
    @grade
  end
end

joe = Student.new("Joe", 100)
bob = Student.new("Bob", 90)
puts "Well done!" if joe.better_grade_than?(bob)
