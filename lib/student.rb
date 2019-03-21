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

end
