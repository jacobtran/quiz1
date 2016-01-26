# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

module BankMethods
  def transaction_fee
    puts "There is a #{bank_name} transaction fee of $2.00"
  end
end

module ThirdPartyMethods
  def transaction_fee
    puts "There is an additional #{bank_name} transaction fee of $3.50"
  end
end

class ATM
  include BankMethods
  attr_reader :bank_name

  def initialize(bank_name)
    @bank_name = bank_name
    puts "Welcome to the #{bank_name} ATM"
    transaction_fee
  end
end

system("clear");
puts "ATM Game"
puts  "--------"
puts "You find yourself in need of money and need to find an ATM."
puts "What would you like to do?"
puts
puts "1. Drive to your nearest bank branch and use the bank ATM."
puts "2. Walk to the corner store down the road and use their ATM."
puts
print "Please enter your selection:  "
selection = gets.chomp.to_i
puts
if selection == 1
  atm = ATM.new("Scotiabank")
else
  atm2 = ATM.new("Seven Eleven")
  atm2.extend ThirdPartyMethods
  atm2.transaction_fee
end
puts
