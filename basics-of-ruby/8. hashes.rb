# Hashes in Ruby (also known as Dictionaries)
# A hash is a collection of key-value pairs, similar to a dictionary
# There are two main syntaxes for creating hashes in Ruby:

# 1. Using => (hash rocket) syntax
sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}  # Keys are strings

# 2. Using symbol syntax (more modern, preferred when keys are symbols)
another_hash = {a: 1, b: 2, c: 3}  # Keys are symbols

# Accessing hash values
puts "\n--- Accessing Hash Values ---"
p sample_hash['a']    # Access using string key => 1
p sample_hash         # Full hash: {"a"=>1, "b"=>2, "c"=>3}
p another_hash        # Full hash with symbols: {:a=>1, :b=>2, :c=>3}
p another_hash[:a]    # Access using symbol key => 1

# Getting all keys or values from a hash
puts "\n--- Getting Keys and Values ---"
p sample_hash.keys    # Get all keys: ["a", "b", "c"]
p another_hash.keys   # Get all keys: [:a, :b, :c]

p sample_hash.values  # Get all values: [1, 2, 3]
p another_hash.values # Get all values: [1, 2, 3]

# Iterating through a hash
puts "\n--- Iterating Through Hash ---"
# Each key-value pair can be processed using each
sample_hash.each do |key, value|
    puts "Key: #{key} (#{key.class}), Value: #{value} (#{value.class})"
end

# Real-world example with person details
puts "\n--- Working with a Person Details Hash ---"
details_hash = {name: "sachin", age: 20}
p details_hash

# Demonstrating key-value types
details_hash.each do |key, value|
    puts "Key: #{key} (#{key.class}), Value: #{value} (#{value.class})"
end

# Modifying hashes
puts "\n--- Modifying Hashes ---"
# Adding new key-value pairs
details_hash[:city] = 'Noida'  # Add new key-value pair
details_hash[:age] = 20        # Update existing value
p details_hash                 # {:name=>"sachin", :age=>20, :city=>"Noida"}

# Removing key-value pairs
details_hash.delete(:age)      # Remove key-value pair
p details_hash                 # {:name=>"sachin", :city=>"Noida"}