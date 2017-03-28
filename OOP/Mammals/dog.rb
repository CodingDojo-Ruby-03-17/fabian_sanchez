=begin
============================
Assignment: Dog
============================

----------------------
Purpose
----------------------

Dog class definition that inherits from mammal:
  > Attributes:
      '-> helath > with value of 150 (Inherited)

  > Methods:
      Inherited
        '-> display_health > prints the health of the Mammal.
      Defined
        |-> pet > increses health by 5
        |-> walk > decreases health by 1
        '-> run > decreases health by 10

----------------------
Author: Fabian Sanchez
----------------------
Date: 03/27/2017
----------------------
=end
# Importing class on a different file on the same directory
require_relative 'mammal'

# Definign Dog class
class Dog < Mammal
  #Methods of class Dog
  # Method for petting, which increases health in 5
  def pet
    puts "After petting helath increased 5"
    @health = @health + 5
    return self
  end

  # Method for walking, which decreases health in 1
  def walk
    puts "After a walk health decreased 1"
    @health = @health - 1
    return self
  end

  # Method for running, which decreases health in 10
  def run
    puts "After a run health decreased 10"
    @health = @health - 10
    return self
  end
end

puts
puts "Testing by creating a Dog object, and having it walk 3 times, run 2, pet once and display health. "
puts
puts "Creating Dog object: Dog.new\n\n"
dog = Dog.new
print "Health before activities: "
dog.display_health
puts "\nHaving dog do the activities...\n\n"
dog.walk.walk.walk.run.run.pet
print "\nHealth after activities: "
dog.display_health
puts
