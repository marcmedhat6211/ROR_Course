class  Student

  #this line simply makes setters and getters for all the class
  attr_accessor :first_name, :last_name, :email, :username, :password
  #this will allow me only to read the instance username
  # attr_reader :username

  #instance variables
  @first_name
  @last_name
  @email
  @username = "marc.medhat"
  @password

  #el constructor
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  #el setters f ruby shaklaha keda
  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end

  #el method dyh et3amalet 3ashan ana medy lel username attr_reader bs
  def set_username
    @username = "marc.medhat"
  end

  #that is a method that is by default is there in all classes (lw ma3maltelhash implement it will just print anything)
  def to_s
    "
    First name: #{@first_name}
    Last name: #{@last_name}
    Email: #{@email}
    Username: #{@username}
    Password: #{@password}
    "
  end
end

#new object
# student = Student.new
# student.first_name = "Marc"
# puts student.first_name
# student.last_name = "Medhat"
# puts student.last_name
# student.email = "marc@gmail.com"
# puts student.email
# # student.username = "marc.medhat"
# student.set_username
# puts student.username
# student.password = "123456"
# puts student.password

#AFTER CONSTRUCTOR
student = Student.new("Marc", "Medhat", "marc@gmail.com", "marc.medhat", "123456")
print student