require_relative "19. Project- Access-Modules-without-self-to-access-in-class.rb"

class Student
    include Crud
    attr_accessor :first_name, :last_name, :email, :user_name, :password

    def initialize(first_name, last_name, email, user_name, password)
        @first_name = first_name
        @last_name = last_name
        @email = email
        @user_name = user_name
        @password = password
    end

    def to_s
        "First Name: #{@first_name}\nLast Name: #{@last_name}\nEmail: #{@email}\nUser Name: #{@user_name}\nPassword: #{password}"
    end
end


sachin = Student.new('Sachin','Gupta','sachin@demo.com','sachingupta67','123456')

hashed_password = sachin.create_hash_digest(sachin.password)
p hashed_password