class Student
  attr_accessor :name, :grade
  attr_reader :id
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize (name, grade)
    @name = name
    @grade = grade
  end

  def save

  end

  def self.create_table
  end

  def self.drop_table
  end

  def self.create
  end
  
end
