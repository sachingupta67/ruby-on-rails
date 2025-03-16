
require "bundler/inline"

gemfile true do
    source "https://rubygems.org/"
    gem 'bcrypt'
end


require 'bcrypt'

USER_PASSWORD ='my_password'
WRONG_PASSWORD ='wrong_password'

# password converted to hash , everytime hash changes
my_password = BCrypt::Password.create(USER_PASSWORD)
puts my_password # $2a$12$bE3dUaXwZ/xyg8fT9Z9rKO98Q3e6t43L7D4pwg12fx9Xt5R2HhWWO
# puts my_password.version # 12a
# puts my_password.cost #12
puts my_password == USER_PASSWORD  # true
puts my_password == WRONG_PASSWORD # false

# how we will validate the password , if hash storeged is different , password comparision

# we will do converstion from Stored Hash to string

STORED_HASH = '$2a$12$V3/Dk1omwNSyUmd5OBe3.u5/S9jaIsikydA5APPkt9k.R71MU7LbO'

password_string_from_hash = BCrypt::Password.new(STORED_HASH)

puts password_string_from_hash == USER_PASSWORD # TRUE : Authenticated