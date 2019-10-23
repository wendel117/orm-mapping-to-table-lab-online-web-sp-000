class Student
  attr_accessor :name, :grade
  attr_writer :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize (name, grade, id)
    @name = name
    @grade = grade
    @id = id
  end

  def save

  end

end
