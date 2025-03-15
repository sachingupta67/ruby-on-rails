# ============================
# If-Else-If Branching in Ruby
# ============================
=begin
Ruby uses if, elsif, and else for conditional branching
The general syntax is:

if condition1
  # code for condition1
elsif condition2 
  # code for condition2
else
  # code when no conditions match
end
=end

# Example 1: Basic grade calculator
puts "Enter your score (0-100):"
score = gets.chomp.to_i

if score >= 90
    puts "Grade: A"
elsif score >= 80
    puts "Grade: B"
elsif score >= 70
    puts "Grade: C"
elsif score >= 60
    puts "Grade: D"
else
    puts "Grade: F"
end

# Example 2: Time of day greeting
hour = Time.now.hour  # Gets current hour (0-23)

if hour < 12
    puts "Good morning!"
elsif hour < 17
    puts "Good afternoon!"
else
    puts "Good evening!"
end

# Example 3: Number comparison
puts "\nEnter a number:"
num = gets.chomp.to_i

if num > 0
    puts "#{num} is positive"
elsif num < 0
    puts "#{num} is negative"
else
    puts "#{num} is zero"
end