# Ruby Output Methods: puts, p, print
# ===================================

# 1. puts - Adds a new line after printing
puts "Good morning!" # Output: Good morning!\n

# 2. p - Prints with debugging information (shows quotes for strings)
p "Welcome"         # Output: "Welcome"

# 3. print - Prints without adding a new line
print "Hello "      # Output: Hello (no newline)
print "there!"      # Output: Hello there! (on same line)

# Demonstration of differences:
puts "First line"   # Prints with newline
puts "Second line"  # Prints with newline

# Array printing behavior:
numbers = [1, 2, 3]
p numbers           # Debug output: [1, 2, 3]
puts numbers        # Each element on new line: 1\n2\n3\n

print "Greetings "  # Without newline
print "dear "       # Continues on same line
print "friend"      # All on one line: "Greetings dear friend"

puts "\n-----------------------------------"

# Printing variables
name = "John Smith"
puts "Current user: #{name}"

puts "Methods for Personalized Greetings"
puts "--------------------------------"

def greet_user
    puts "Welcome, esteemed guest!"
end

greet_user

def personalized_greeting(name)
    puts "Greetings, #{name}! How may we assist you today?"
end

personalized_greeting "Sarah"  # Demonstrating method with parameter