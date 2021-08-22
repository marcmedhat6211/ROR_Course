##IMPORTANT##
# in this file you will notice that there are a list of methods that are all doing related functionalitities
# in other words this is called a module (a module is something that is ready with some methods to use when needed)

#that's how you create a new module
module Crud
  require 'bcrypt'

  puts "Module crud activated"

  #el method dyh bta5od el password w traga3hooly hashed
  #you have to put Crud (module name) before the method name so you can read it on the other side
  #hena mmkn testa5dem self aw Crud (el hwa el module name y3ny)
  # def Crud.hash_password(password)
  def self.hash_password(password)
    BCrypt::Password.create(password)
  end

  #el method dyh bta5od el password hashed w traga3ly el password as a string 3ashan a3raf en ana a validate 3aleh
  def self.verify_hashed_password(password)
    BCrypt::Password.new(password)
  end

  # el method dyh bta5od el list of users w traga3homly bs el passwrods bta3ethom ma3molaha hash
  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = hash_password(user_record[:password])
    end

    list_of_users
  end

  def authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hashed_password(password)
        return true
      end
    end

    return false
  end


end