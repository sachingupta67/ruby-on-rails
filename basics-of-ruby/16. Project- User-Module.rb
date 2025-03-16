require_relative "15. Project-Convert-to-Module.rb"

users=[
       {name:"rahul",password:"abc123",},
       {name:"ramesh",password:"password",},
       {name:"suresh",password:"123456",},
      ]

hashed_users = Crud.create_secure_users(users)
puts hashed_users
