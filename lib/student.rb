class Student
  attr_reader :db, :id

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def self.db
    @db = DB[:conn]


  def initialize(name, db)
  end

end
