require_relative 'crud'

class  Student
  #as long as en ana esta5demt include hena mmkn aroo7 fel module nafso w asta3'na 3an kelmet Crud aw self
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  #instance variables
  @first_name
  @last_name
  @email
  @username
  @password

  #constructor
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
    Email: #{@email}
    Username: #{@username}
    Password: #{@password}
    "
  end
end

student = Student.new("Marc", "Medhat", "marc@gmail.com", "marc.medhat", "password")
secured_student = student.hash_password(student.password)