class Student
  attr_reader :id

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  def initialize(name, DB[:conn])
  end

end
