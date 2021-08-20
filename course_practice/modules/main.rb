#use this if you are in the same directory
require_relative 'crud'


# use this if the module you are using is in different directory
# $LOAD_PATH << "."
# require 'crud'

users = [
  { username: "marc", password: "pass1" },
  { username: "ahmed", password: "pass2" },
  { username: "andrew", password: "pass3" },
  { username: "oliver", password: "pass4" },
  { username: "khaled", password: "pass5" },
  { username: "hassan", password: "pass6" }
]


hashed_users = Crud.create_secure_users(users)
p Crud.authenticate_user("marc", "pass1", hashed_users)


