# Entities must depend on abstractions not concretions, it states that the high-level module must not depend on the low level module, but they should depend on abstractions.
# an example would be a password reminder class connecting to a mysql database

# WRONG
# class MySQLConnection
#   def connect
#     "MySQL database connection"
#   end
# end

# class PasswordReminder
#   attr_accessor :db_connection

#   @db_connection

#   def initialize(db_connection = MySQLConnection.new)
#     @db_connection = db_connection
#   end
# end

# password_reminder = PasswordReminder.new(MySQLConnection.new)
# puts password_reminder

#RIGHT
module DBConnectionInterface
  def connect
  end
end

class MySQLConnection
  include DBConnectionInterface
  
  def connect
    "MySQL database connection"
  end
end

class PasswordReminder
  attr_accessor :db_connection
  @db_connection

  def initialize(db_connection = DBConnectionInterface.new)
    @db_connection = db_connection
  end
end

password_reminder = PasswordReminder.new(MySQLConnection.new)
puts password_reminder