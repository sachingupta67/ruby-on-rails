require "bundler/inline"

gemfile true do
    source "https://rubygems.org/"
    gem 'bcrypt'
end


require 'bcrypt'

users=[
     {name:"rahul",password:"abc123",},
    {name:"ramesh",password:"password",},
    {name:"suresh",password:"123456",},
    ]

def create_hash_digest(password)
    # here password is string which is enter by user
    BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  #here password is hashed
    BCrypt::Password.new(password)
end


def create_secure_users(list_of_users)
    list_of_users.each do |user|
    #   puts user[:password]
       user[:password] = create_hash_digest(user[:password])
    end
    list_of_users
end

puts create_secure_users(users)