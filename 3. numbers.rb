# ====================================
# Ruby Numbers and Arithmetic Guide
# ====================================
# This guide covers numbers, arithmetic operations, and type conversions in Ruby

# =======================
# 1. Basic Arithmetic
# =======================
=begin
Ruby supports all standard arithmetic operations:
+ : Addition
- : Subtraction
* : Multiplication
/ : Division
% : Modulus (remainder)

Note: Integer division returns an integer (truncates decimal)
=end

# Basic operations
puts "Basic Arithmetic Examples:"
puts 1 + 2                    # Output: 3 (Addition)
puts 2 - 1                    # Output: 1 (Subtraction)
puts 4 * 3                    # Output: 12 (Multiplication)
puts 10 / 2                   # Output: 5 (Division)
puts 10 % 3                   # Output: 1 (Modulus - remainder of 10/3)

# Separator for readability
puts "-" * 20                 # Creates a line of dashes

# ========================
# 2. Integer vs Float Division
# ========================
=begin
Important points about division in Ruby:
1. Integer division returns an integer (truncates decimal part)
2. To get decimal results, at least one number must be a float
3. Floats are denoted by decimal points (e.g., 10.0, 4.0)
=end

puts "\nDivision Examples:"
puts 10 / 4                   # Output: 2 (Integer division - truncates decimal)
puts 10.0 / 4                # Output: 2.5 (Float division - keeps decimal)
puts 10 / 4.0                # Output: 2.5 (Float division - keeps decimal)
puts 10.0 / 4.0              # Output: 2.5 (Float division - keeps decimal)

# ==========================
# 3. String and Number Operations
# ==========================
=begin
Ruby allows some interesting operations between strings and numbers:
- String * Number: Repeats the string that many times
- But String + Number will raise an error
=end

puts "\nString and Number Interactions:"
puts "5" * 2                 # Output: 55 (String repetition)
puts "-" * 20                # Output: -------------------- (Creates a divider)

# ========================
# 4. Type Conversion
# ========================
=begin
Ruby provides several methods for type conversion:
to_i : Convert to Integer
to_f : Convert to Float
to_s : Convert to String
to_sym : Convert to Symbol

Note: Converting invalid strings to numbers typically returns 0
=end

puts "\nType Conversion Examples:"
puts "5".to_i                # Output: 5 (String to Integer)
puts "5".to_f                # Output: 5.0 (String to Float)
puts "5".to_s                # Output: "5" (String to String)
puts "hello".to_i            # Output: 0 (Invalid number returns 0)

# ========================
# 5. Number Repetition
# ========================
=begin
The times method allows you to repeat an action a specific number of times
You can use it with a block (code between {} or do/end)
=end

puts "\nRepetition Example:"
3.times { puts "Ruby!" }     # Prints "Ruby!" 3 times

# ============================
# 6. Simple Calculator Example
# ============================
=begin
A practical example combining:
- User input
- Type conversion
- Arithmetic operations
- String interpolation
=end

puts "\nSimple Calculator"
puts "-" * 25                # Divider line

# Get first number
puts "Enter the first number:"
num1 = gets.chomp.to_f       # Convert input to float

# Get second number
puts "Enter the second number:"
num2 = gets.chomp.to_f       # Convert input to float

# Perform calculations
puts "\nCalculation Results:"
puts "Addition: #{num1 + num2}"
puts "Subtraction: #{num1 - num2}"
puts "Multiplication: #{num1 * num2}"
puts "Division: #{num1 / num2}" if num2 != 0  # Prevent division by zero

# =========================
# 7. Additional Tips
# =========================
=begin
Important things to remember:
1. Always consider type when doing calculations
2. Convert strings to appropriate number types
3. Be careful with division by zero
4. Use float division when you need decimal precision
5. Ruby has built-in math functions (Math module)
=end

# Example of Math module usage
puts "\nMath Module Examples:"
puts Math.sqrt(16)           # Square root: 4.0
puts Math::PI               # Pi: 3.141592653589793 