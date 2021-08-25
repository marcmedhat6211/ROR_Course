require_relative 'handle_password'

class Student
  include HandlePassword
  attr_accessor :first_name, :last_name, :email, :username, :password 

  @first_name
  @last_name
  @email
  @username
  @password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "
    First name: #{@first_name}
    Last name: #{@last_name}
    "
  end
end


#to create an object of student class
student = Student.new("Marc", "Medhat", "marc@gmail.com", "marc.medhat", "123456")

secure_student = student.verify_hashed_passwrod(student.password)
puts secure_student