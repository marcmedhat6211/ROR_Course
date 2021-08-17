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

attempts = 0

while attempts < 3
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp

    result = is_valid(users, username, password)
    if result
        puts result
        break
    else
        puts "Wrong credentials please try again"
    end

    attempts += 1
end

