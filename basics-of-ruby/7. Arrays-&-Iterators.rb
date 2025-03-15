# ============================
# 1. Arrays and Ranges Basics
# ============================

# Create a range and convert to array
x = 1..10  # Creates a range from 1 to 10 (inclusive)
puts "Range: #{x}"

y = x.to_a  # Converts range to array
puts "\nArray from range: #{y}"

# Array manipulations
puts "\nReversed array: #{(1..10).to_a.reverse}"  # Non-destructive reverse
puts "Array length: #{y.length}"
puts "First element: #{y.first}"
puts "Last element: #{y.last}"

# Adding elements
puts "\nModifying arrays:"
puts "Add to front: #{y.unshift("Sachin")}"  # Adds element at beginning
puts "Add to back: #{y.push("Dhoni")}"       # Adds element at end
puts "Final array: #{y}"

# Array checks
puts "\nArray checks:"
puts "Is array empty? #{y.empty?}"
puts "Is [] empty? #{[].empty?}"
puts "Contains 'Sachin'? #{y.include?("Sachin")}"
puts "Contains 'Dhoni'? #{y.include?("Dhoni")}"

# Array to string conversion
puts "\nArray joined as string: #{y.join(", ")}"

# ============================
# 2. Array Iteration Methods
# ============================
puts "\n" + "="*40
puts "Array Iteration Examples:"
puts "="*40

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# 1. Using for loop (traditional)
puts "\n1. For loop:"
for num in numbers
    puts "Number: #{num}"
end

# 2. Using each method
puts "\n2. Each method:"
numbers.each do |num|
    puts "Double of #{num} is #{num * 2}"
end

# 3. Using each_with_index
puts "\n3. Each with index:"
numbers.each_with_index do |num, index|
    puts "Position #{index}: #{num}"
end

# 4. Using map/collect for transformation
puts "\n4. Map method (creates new array):"
squares = numbers.map do |num|
    num ** 2
end
puts "Original: #{numbers}"
puts "Squares: #{squares}"

# 5. Using select for filtering
puts "\n5. Select method (filtering):"
evens = numbers.select do |num|
    num.even?
end
puts "Even numbers: #{evens}"

# 6. Using reduce/inject for accumulation
puts "\n6. Reduce method (accumulation):"
sum = numbers.reduce(0) do |total, num|
    total + num
end
puts "Sum of all numbers: #{sum}"