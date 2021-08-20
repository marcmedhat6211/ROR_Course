users = [
  { username: "marc", password: "pass1" },
  { username: "ahmed", password: "pass2" },
  { username: "andrew", password: "pass3" },
  { username: "oliver", password: "pass4" },
  { username: "khaled", password: "pass5" },
  { username: "hassan", password: "pass6" }
]

def is_valid(users, username, password)
  users.each do |user|
    if user[:username] == username && user[:password] == password
        return user
    end
  end

  return false
end

puts "Please enter your username and password"
25.times{
  print "-"
}
puts

flag = true
attempts = 0
while flag
  if(attempts < 3)
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    result = is_valid(users, username, password)
    if result
      puts "You have logged in successfully"
      puts result
      exit(0)
    else
      puts "Wrong credentials, press q to quit the program or press any key to continue"
      user_input = gets.chomp           
      exit(0) if user_input = 'q'
    end
    attempts += 1
  else
    puts "You have exceeded the maximum number of your trials"
    flag = false
  end
end