class Account

  attr_accessor :balance

  def initialize
    self.balance = 0
  end

  def deposit(amount)
    # add to our balance
    self.balance += amount
  end

  def withdraw(amount)
    self.balance -= amount
    if (self.balance < 0)
      puts "OVERDRAFT FEE"
      self.balance -= 45
    end
  end

end

# instantiate
# initialize
# create a new object
first_account = Account.new
second_account = Account.new

first_account.deposit 500
first_account.withdraw 495
first_account.withdraw 5.01
puts first_account.balance
