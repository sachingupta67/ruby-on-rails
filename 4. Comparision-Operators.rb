# ==========================================
# Ruby Comparison Operators Guide
# ==========================================
# This guide covers different types of comparison operators and their behavior in Ruby

# ============================
# 1. Basic Equality Operator (==)
# ============================
=begin
The == operator checks if two values are equal in terms of their content.
It's the most commonly used equality operator and performs type coercion.
Type coercion means it will try to convert types to match before comparison.
=end

puts "\nBasic Equality (==) Examples:"
puts "10 == 10:          #{10 == 10}"          # true (same numbers)
puts "10 == 9:           #{10 == 9}"           # false (different numbers)
puts '10 == "10".to_i:   #{10 == "10".to_i}'   # true (string converted to integer)
puts '10 == "10".to_f:   #{10 == "10".to_f}'   # true (string converted to float)
puts '10 == "10":        #{10 == "10"}'        # false (no automatic type conversion)

# ============================
# 2. Inequality Operator (!=)
# ============================
=begin
The != operator is the opposite of ==
Returns true if values are not equal
Also performs type coercion like ==
=end

puts "\nInequality (!=) Examples:"
puts "10 != 9:           #{10 != 9}"           # true (different values)
puts "10 != 10:          #{10 != 10}"          # false (same values)
puts '"hello" != "world": #{"hello" != "world"}' # true (different strings)

# ============================
# 3. String Comparisons
# ============================
=begin
String comparisons in Ruby:
- Compare based on ASCII/Unicode values
- Case-sensitive by default
- Compare character by character from left to right
=end

puts "\nString Comparison Examples:"
puts '"hello" == "hello": #{"hello" == "hello"}'  # true (exact match)
puts '"hello" == "world": #{"hello" == "world"}'  # false (different strings)
puts '"hello" < "world":  #{"hello" < "world"}'   # true (h comes before w in alphabet)
puts '"hello" > "world":  #{"hello" > "world"}'   # false (h comes before w in alphabet)

# ============================
# 4. Type-Strict Equality (eql?)
# ============================
=begin
The eql? method checks both value AND type equality
More strict than == because it won't perform type coercion
Commonly used in Hash comparisons
=end

puts "\nType-Strict Equality (eql?) Examples:"
puts "10.eql?(10):       #{10.eql?(10)}"       # true (same value and type)
puts "10.eql?(10.0):     #{10.eql?(10.0)}"     # false (different types: Integer vs Float)
puts "10.0.eql?(10.0):   #{10.0.eql?(10.0)}"   # true (same value and type)

# ============================
# 5. Object Identity (equal?)
# ============================
=begin
The equal? method checks if two variables reference the exact same object
This is the strictest form of equality in Ruby
Tests object identity, not value
Similar to checking object_id equality
=end

puts "\nObject Identity (equal?) Examples:"
a = "hello"
b = "hello"
c = a

puts "Same object test:"
puts "a.equal?(b):       #{a.equal?(b)}"       # false (different objects with same value)
puts "a.equal?(c):       #{a.equal?(c)}"       # true (same object)
puts "a.object_id == c.object_id: #{a.object_id == c.object_id}" # true

# ============================
# 6. Comparison Best Practices
# ============================
=begin
1. Use == for general value comparison
2. Use eql? when type checking is important
3. Use equal? only when object identity matters
4. Be careful with floating-point comparisons
5. Remember that nil is an object and can be compared
=end

# Example of nil comparison
puts "\nNil Comparison Examples:"
puts "nil == nil:        #{nil == nil}"        # true
puts "nil.nil?:          #{nil.nil?}"          # true
puts '"".nil?:           #{"".nil?}"'          # false (empty string is not nil)

# ============================
# 7. Comparison Operators (<, >, <=, >=)
# ============================
=begin
Ruby supports all standard comparison operators:
<  : less than
>  : greater than
<= : less than or equal to
>= : greater than or equal to
=end

puts "\nComparison Operator Examples:"
puts "5 < 10:            #{5 < 10}"            # true
puts "5 > 10:            #{5 > 10}"            # false
puts "5 <= 5:            #{5 <= 5}"            # true
puts "5 >= 10:           #{5 >= 10}"           # false

# ============================
# 8. The Spaceship Operator (<=>)
# ============================
=begin
The <=> operator returns:
 -1 if the left operand is less than the right
  0 if the operands are equal
  1 if the left operand is greater than the right
nil if the operands are not comparable
=end

puts "\nSpaceship Operator Examples:"
puts "5 <=> 10:          #{5 <=> 10}"          # -1 (left is less)
puts "10 <=> 10:         #{10 <=> 10}"         # 0 (equal)
puts "15 <=> 10:         #{15 <=> 10}"         # 1 (left is greater)
puts '"a" <=> "b":       #{"a" <=> "b"}'       # #{"a" <=> "b"}