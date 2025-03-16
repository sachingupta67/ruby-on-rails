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

new_secure_users = create_secure_users(users)
puts new_secure_users
def authenticate_user(username,password,list_of_users)
    list_of_users.each do |user|
        #match the name
        if user[:name] == username && verify_hash_digest(user[:password])==password
            puts '::::::::::::user authenticated::::::::'
            return user
        end
    end
    "Credential are not correct"
end

puts authenticate_user('ramesh','password',new_secure_users)
puts authenticate_user('ramesh','ssss',new_secure_users)