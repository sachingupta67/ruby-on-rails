
puts 'Enter first number'
a = gets.chomp
puts 'Enter second number'
b = gets.chomp

puts "Sum: #{add(a,b)}"
puts "Difference: #{subtract(a,b)}"

def multiply (a,b)
    a*b
end

puts multiply(2,2)