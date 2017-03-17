=begin
============================
Assignment: Guess the Number
============================

-------
Purpose
-------

  Create a simple method with one input. Our method will be called
  guess_number and the input will be our guess.

--------
Function
--------

  >> Input: Int that will be the guess

  >> Output: There will be three possible outcomes to this method:

    1) The user guessed correctly, return "You got it!"
    2) The guess was too high, return "Guess was too high!"
    3) The guess was too low, return "Guess was too low!"

  >> Restrictions: Use only integers, no decimals.

-------
Author: Fabian Sanchez
-------

-----
Date: 03/15/2017
-----
=end

# Definig the function
def guess_number guess
    # Number to be guessed
    number = 25

    unless guess == 25

      if guess > 25
        puts "Guess was too high!"

      else
        puts "Guess was too low!"
      end

    else
      puts "You got it!"
    end
end

# Testing the function
print "Testing 22: "
guess_number 22
print "Testing 70: "
guess_number 70
print "Testing 26: "
guess_number 26
print "Testing 24: "
guess_number 24
print "Testing 25: "
guess_number 25
