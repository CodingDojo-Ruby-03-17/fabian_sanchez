=begin
============================
Assignment: Bank Account
============================

----------------------
Purpose
----------------------

We are going to create a BankAccount class. This class will recreate some of
the common account transactions that normally occur for a bank account.

BankAccount Class definition:
  > Attributes:
      |-> @account_number: length 10 digits, randomly generated during init.
      |-> @checking_account_balance: current checking account balance.
      |-> @saving_account_balance: current saving account balance.
      |-> @interest_rate: interest reate value applied to the account.
      |-> @@total_accounts: tracks total accounts as they are created.

  > Public Methods:
      |-> account_number > prints account number.
      |-> checking_account_balance > prints the checking account balance.
      |-> saving_account_balance > prints the saving account balance.
      |-> deposit > allows user to deposit money to either the checking or
      |     saving account.
      |-> withdraw > allows user to withdraw money to either the checking or
      |     saving account.
      |-> total_balance > allows user to check the total amount of money on the
      |     bank.
      |-> total_accounts > allows bank to keep track of the number of accounts
      |     opened.
      '-> account_information > provides overall information of the account.

    > Private Methods:
      '-> account_number_gen > generates a 10 digit random number between
            1000000000 - 9999999999.


----------------------
Author: Fabian Sanchez
----------------------
Date: 03/27/2017
----------------------
=end

class BankAccount
  @@total_accounts = 0
  ###########################
  # Defining class attributes
  # Initializing class attriutes
  def initialize
    # Call function to generate the account number
    account_number_gen
    # Initialize instance variables
    @checking_account_balance = 0
    @saving_account_balance = 0
    @@total_accounts += 1
    @interest_rate = 0.01
  end

  #########################
  # Defininf public methods
  # Print account number
  def account_number
    return @account_number
  end

  # Print checking account current balance.
  def checking_account_balance
    return @checking_account_balance
  end

  # Print saving account current balance.
  def saving_account_balance
    return @saving_account_balance
  end

  #Print total balance the user holds on the bank.
  def total_balance
    return @checking_account_balance + @saving_account_balance
  end

  #Print total accounts open in the bank.
  def total_accounts
    return @@total_accounts
  end

  # Method for providing overall information of the account
  def account_information
    puts "===================="
    puts "Account information:"
    puts "===================="
    puts "\nAccount number: %d" % [@account_number]
    puts "\nTotal money: %d" % [total_balance]
    puts "\nChecking account balance: %d" % [@checking_account_balance]
    puts "\nSaving account balance: %d" % [@saving_account_balance]
    puts "\nInterest rate: %.2f" % [@interest_rate]
    puts
  end

  # Method for depositing money to either the saving or checking account.
  # Takes 2 arguments, the amount to deposit and the account to deposit to.
  def deposit (amount, account)
    if account == "checking"
      @checking_account_balance += amount
    elsif account == "saving"
      @saving_account_balance += amount
    else
      puts "No account was selected"
    end
  end

  # Method for withdrawing money to either the saving or checking account.
  # Takes 2 arguments, the amount to witdraw and the account to witdraw to.
  def withdraw (amount, account)
    if account == "checking"
      @checking_account_balance -= amount
    elsif account == "saving"
      @saving_account_balance -= amount
    else
      puts "No account was selected"
    end
  end

  ##########################
  # Defining private methods
  # Generate account number, length 10 digits and random number
  private
    def account_number_gen
      # Generating the 10 digit account number using random function
      @account_number = rand(1000000000..9999999999)
    end
end

puts
puts "=============================================================================="
puts "Testing by creating a BankAccount object, and running bank transactions in it."
puts "=============================================================================="
puts
puts "Creating Bank Account. Code used is: bank_account_1 = BankAccount.new\n\n"
bank_account_1 = BankAccount.new
puts "After first creating the account information is: \n\n"
bank_account_1.account_information
puts "\n----------------------------------------------------------------------------\n\n"
puts "Now we will deposit 10 000 to both accounts."
bank_account_1.deposit(10000, "checking")
bank_account_1.deposit(10000, "saving")
puts "Now the account looks like this:\n\n"
bank_account_1.account_information
puts "\n----------------------------------------------------------------------------\n\n"
puts "\nNow we will withdraw 5 000 from the checking account."
bank_account_1.withdraw(5000, "checking")
puts "Now the account looks like this:\n\n"
bank_account_1.account_information
puts "\n----------------------------------------------------------------------------\n\n"
print "The total amount of accounts open is: "
puts bank_account_1.total_accounts
print "\nIf we create another account the new total amount of accounts is: "
bank_account_2 = BankAccount.new
puts bank_account_1.total_accounts
puts
puts "\nAnd the new account information is: "
bank_account_2.account_information
