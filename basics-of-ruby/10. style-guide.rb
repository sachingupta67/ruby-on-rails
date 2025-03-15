# Ruby Style Guide Examples

# 1. Variable Naming (snake_case)
first_name = "John"
last_name = "Doe"
full_name = "#{first_name} #{last_name}"

# 2. Function/Method Naming (snake_case)
def calculate_total_price(quantity, unit_price)
  quantity * unit_price
end

# 3. Class Naming (PascalCase/CamelCase)
class BankAccount
  def initialize(balance)
    @balance = balance
  end
  
  # Method indentation - 2 spaces
  def deposit(amount)
    @balance += amount
  end
  
  def withdraw(amount)
    @balance -= amount if amount <= @balance
  end
end

# 4. Constants (ALL_CAPS)
MAX_LOGIN_ATTEMPTS = 3
DEFAULT_CURRENCY = "USD"

# 5. Predicate Methods (end with ?)
def valid_password?(password)
  password.length >= 8
end

# 6. Dangerous Methods (end with !)
def normalize_string!(str)
  str.strip!
  str.downcase!
end
