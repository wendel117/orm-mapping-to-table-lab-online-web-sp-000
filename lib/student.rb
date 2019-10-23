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
    sql = <<-SQL
          INSERT INTO songs (name, album) 
          VALUES (?, ?)
        SQL
     
        DB[:conn].execute(sql, self.name, self.grade)
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
  end

  def self.create
  end

end
