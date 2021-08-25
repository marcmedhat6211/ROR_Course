module HandlePassword
  require 'bcrypt'

  def hash_password(password)
    BCrypt::Password.create(password)
  end

  def verify_hashed_passwrod(password)
    BCrypt::Password.new(password)
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