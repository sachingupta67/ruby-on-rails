# ====================================
# Comprehensive Ruby Strings Guide
# ====================================
# This guide provides detailed explanations and examples of Ruby string operations.

# ===================
# 1. String Definition
# ===================
=begin
In Ruby, strings can be created in two ways:
1. Single quotes ('): Create basic strings without special processing
2. Double quotes ("): Allow string interpolation and escape characters

Key differences:
- Single quotes are slightly more efficient as Ruby doesn't need to process them for interpolation
- Double quotes are more flexible as they allow for string interpolation and escape sequences
=end

str1 = 'Hello'              # Single quoted string
str2 = "World"              # Double quoted string

# String Interpolation Example
name = "Ruby"
puts "Hello #{name}"        # Works: Outputs "Hello Ruby"
puts 'Hello #{name}'        # Doesn't work: Outputs literally "Hello #{name}"

# ====================
# 2. String Properties
# ====================
=begin
Ruby strings have several built-in properties and methods to check their characteristics:
- .class: Returns the type of the object
- .length: Returns the number of characters
- .empty?: Checks if string has zero characters
- .nil?: Checks if the object is nil (different from empty!)
=end

text = "sample"
puts text.class             # Output: String
puts "Ruby".length         # Output: 4

# Empty vs Nil explanation
puts "".empty?             # true - string exists but has no characters
puts "".nil?              # false - string exists, just empty
puts nil.nil?             # true - actual nil value

# =======================
# 3. String Manipulation
# =======================
=begin
Ruby offers multiple ways to manipulate strings:
1. String concatenation using + operator
2. String interpolation using #{} syntax
3. String interpolation is generally preferred because:
   - More readable for complex strings
   - More efficient (creates fewer temporary objects)
   - Automatically converts non-string objects to strings
=end

first = "John"
last = "Doe"
# Method 1: Concatenation
full_name = first + " " + last    # Creates multiple temporary strings

# Method 2: Interpolation (preferred)
full_name = "#{first} #{last}"    # More efficient and readable

# ==========================
# 4. String Transformations
# ==========================
=begin
Ruby provides many methods to transform strings:
- to_s: Convert objects to strings
- reverse: Reverse the characters in the string
- capitalize: Make first character uppercase, rest lowercase
- upcase: Convert all characters to uppercase
- downcase: Convert all characters to lowercase
=end

# Number to string conversion
number = 42
str_number = number.to_s          
puts str_number.class             # Output: String

# String transformations
word = "hello"
puts word.reverse                 # Output: "olleh"
puts word.capitalize             # Output: "Hello"
puts word.upcase                 # Output: "HELLO"

# ======================
# 5. String Replacement
# ======================
=begin
Ruby offers two main methods for string replacement:
1. sub: Replaces first occurrence only
2. gsub: Replaces all occurrences (global substitution)
Both methods can accept:
- Simple strings
- Regular expressions
- Blocks for complex replacements
=end

text = "The cat and the cat"
puts text.sub("cat", "dog")      # Replaces first "cat" only
puts text.gsub("cat", "dog")     # Replaces all "cat" occurrences

# ====================
# 6. String Escaping
# ====================
=begin
Escape characters allow you to include special characters in strings:
- \' : Single quote
- \" : Double quote
- \n : Newline
- \t : Tab
- \\ : Backslash
Double quotes make it easier to work with apostrophes
=end

puts 'It\'s a beautiful day'     # Requires escape character
puts "It's a beautiful day"      # No escape needed - cleaner!

# =================
# 7. User Input
# =================
=begin
gets: Reads one line from user input
chomp: Removes the trailing newline character (\n)
Common conversions for user input:
- to_i: Convert to integer
- to_f: Convert to float
- to_s: Convert to string
=end

puts "What's your name?"
name = gets.chomp                # removes trailing newline
puts "Hello, #{name}!"

puts "Enter a number:"
number = gets.chomp.to_i         # converts string input to integer
puts "Double of your number is: #{number * 2}"

# ======================
# 8. Variable Assignment
# ======================
=begin
Important points about string assignment:
1. Strings are mutable objects in Ruby
2. When you assign a string to a new variable, it creates a copy
3. Modifying the original string doesn't affect the copy
4. Use .dup or .clone for explicit copying
=end

original = "Hello"
copy = original                  # Creates a new copy
original = "World"              # Modifying original
puts copy                       # Still prints "Hello"

# Additional String Methods Worth Knowing
=begin
Other useful string methods:
- strip: Removes leading and trailing whitespace
- split: Converts string to array based on delimiter
- include?: Checks if string contains substring
- start_with?: Checks if string starts with substring
- end_with?: Checks if string ends with substring
=end

text = "  hello world  "
puts text.strip                 # Removes whitespace
puts "hello,world".split(',')   # Creates array ["hello", "world"]
puts "hello".include?("el")     # true
puts "hello".start_with?("he")  # true
puts "hello".end_with?("lo")    # true