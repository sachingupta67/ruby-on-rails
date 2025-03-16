require "bundler/inline"

gemfile true do
    source "https://rubygems.org/"
    gem 'bcrypt'
end





module Crud
    require 'bcrypt'
    puts ":::::::::::Module CRUD Activated:::::::::"

    def self.create_hash_digest(password)
        # here password is string which is enter by user
        BCrypt::Password.create(password)
    end
    
    def self.verify_hash_digest(password)
      #here password is hashed
        BCrypt::Password.new(password)
    end
    
    
    def self.create_secure_users(list_of_users)
        list_of_users.each do |user|
        #   puts user[:password]
           user[:password] = create_hash_digest(user[:password])
        end
        list_of_users
    end
    
    def self.authenticate_user(username,password,list_of_users)
        list_of_users.each do |user|
            #match the name
            if user[:name] == username && verify_hash_digest(user[:password])==password
                puts '::::::::::::user authenticated::::::::'
                return user
            end
        end
        "Credential are not correct"
    end

end

# Note - here we added Crud in each method in Module to access this
# we can do without this with  we added 'Self'