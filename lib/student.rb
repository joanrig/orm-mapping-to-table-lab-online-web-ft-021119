class Student
  attr_reader :db, :grade, :id, :name

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def self.db
    @db = DB[:conn]
  end

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    DB[:conn].execute("DROP TABLE students";)
  end


end
