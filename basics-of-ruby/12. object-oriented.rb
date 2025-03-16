# Object Oriented Programming in Ruby
# ================================
# OOP is a programming paradigm that uses objects (instances of classes) to structure code.
# Objects contain both data (attributes) and code (methods).
# Key OOP concepts: Classes, Objects, Encapsulation, Inheritance, Polymorphism

# Example 1: Basic Class with Manual Getters/Setters
# ================================================
class Student
  # Instance variables (attributes)
  @first_name
  @last_name 
  @email
  @username
  @password

  # Setter method for email
  def email=(val)
    @email = val
  end

  # Getter method for email
  def email 
    @email
  end
  
  # Setter method for first name
  def set_first_name=(name)
    @first_name = name
  end

  # Getter method for first name
  def first_name
     @first_name
  end

  # String representation of Student object
  def to_s
    puts "Student Details: First Name: #{@first_name}, Last Name: #{@last_name}, Email: #{@email}, Username: #{@username}"
  end
end

# Creating and Using Student Objects
# ================================
puts "\nExample 1: Working with Student class"
student_one = Student.new

# Setting values using setter methods
student_one.set_first_name = 'Sachin Gupta'
student_one.email = "sachin@gmail.com"

# Getting values using getter methods
puts "Student's first name: #{student_one.first_name}"
puts "Student's email: #{student_one.email}"
puts student_one

# Example 2: Using attr_accessor and attr_reader
# ============================================
# attr_accessor: Creates both getter and setter methods
# attr_reader: Creates only getter method
class User
    attr_accessor :name, :email  # Creates name=, name, email=, email methods
    attr_reader :id             # Creates only id method (getter)
    
    def set_id
        @id = '999999999'
    end
end

puts "\nExample 2: Working with User class"
user_one = User.new

# Using attr_accessor methods
user_one.name = "Sachin-User"      # Setter
user_one.email = "sachin@email.com" # Setter
puts "Name: #{user_one.name}"      # Getter
puts "Email: #{user_one.email}"    # Getter

# Using attr_reader and custom setter
user_one.set_id
puts "ID: #{user_one.id}"         # Getter
# user_one.id = '7878787'         # This would raise an error - no setter method

# Example 3: Initialize Method and Object Creation
# =============================================
# initialize is a special method called when creating new objects
class Employee
    attr_accessor :name, :email

    # Constructor method
    def initialize(name, email)
        @name = name
        @email = email
    end

    def to_s
        "Employee Details: Name: #{@name}, Email: #{@email}"
    end
end

puts "\nExample 3: Working with Employee class"
# Creating objects with initial values
employee_one = Employee.new("Sachin-Employee", "sachin@gmail.com")
employee_two = Employee.new("Mohan", "mohan@gmail.com")

puts "Initial employee_one details:"
puts employee_one

puts "\nDemonstrating attribute modification:"
employee_one.email = employee_two.email  # Changing email
puts "Updated employee_one details:"
puts employee_one