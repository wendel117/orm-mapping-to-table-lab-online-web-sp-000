class Student
  attr_accessor :name, :grade, :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize (name, grade)
    @name = name
    @grade = grade
  end

  def save

  end

end
