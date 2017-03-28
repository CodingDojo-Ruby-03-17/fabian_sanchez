=begin
============================
Assignment: Math Dojo
============================

-------
Purpose
-------

Create a MathDojo class that will allow you to add and subtract numbers.

Example:

  challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
  challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
-------
Author: Fabian Sanchez
-------

-----
Date: 03/27/2017
-----
=end

class MathDojo
  # Instance attributes
  attr_accessor :result

  # Instance methods
  # Initializing result for allowing operations to happen
  def initialize (result=0)
    @result = result
  end

  # Addition
  def add (*operators)
    # Iterate through the array of arguments received
    operators.each do |operator|
      # Compute the addition if the elemtn is a normal integer
      unless operator.class == Array
        @result = @result + operator
      else
        # If we get an array iterate throgh each element and do a recursive
        # call of the add funciton for allowing going through indexed arrays
        operator.each { |x| self.add(x)}
      end
    end
    # We have ran through all elements return the self with the updated result
    return self
  end #End add

  # Subtraction
  def subtract (*operators)
    # Iterate through the array of arguments received
    operators.each do |operator|
      # Compute the subtraction if the elemtn is a normal integer
      unless operator.class == Array
        @result = @result - operator
      else
        # If we get an array iterate throgh each element and do a recursive
        # call of the add funciton for allowing going through indexed arrays
        operator.each { |x| self.subtract(x)}
      end # End unless
    end # End do
    return self
  end # End subtract
end # End MathDojo


puts
puts "Testing Challenge 1: MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4"
test1 = MathDojo.new.add(2,5,3)
puts challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
puts
puts "Testing Challenge 2: MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15"
puts challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
puts
