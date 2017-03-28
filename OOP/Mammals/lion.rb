=begin
============================
Assignment: Lion
============================

----------------------
Purpose
----------------------

Lion Class definition:
  > Attributes:
      '-> helath: with value of 170.

  > Methods:
      |-> display_health > prints "This is a Lion". and the health of the Lion.
      |-> fly > decreases health by 10
      |-> attack_town > decreases health by 50
      '-> eat_humans > increases health by 20

----------------------
Author: Fabian Sanchez
----------------------
Date: 03/27/2017
----------------------
=end

# Importing class on a different file on the same directory
require_relative 'mammal'

# Definign Lion class
class Lion < Mammal
  # Giving different initialize
  def initialize (health=170)
    @health = health
  end

  # Methods of class Lion
  # Method for flying, which decreases health in 10
  def fly
    puts "After flying helath decreased 10"
    @health = @health - 10
    return self
  end

  # Method for attacking town, which decreases health in 50
  def attack_town
    puts "After a attacking a town health decreased 50"
    @health = @health - 50
    return self
  end

  # Method for eating humans, which increases health in 20
  def eat_humans
    puts "After eating humans health increased 20"
    @health = @health + 20
    return self
  end

  #Modified method for displaying health
  def display_health
    puts "This is a Lion!"
    super
  end
end

puts
puts "Testing by creating a Lion object, and having it attack_town three times, eat_humans twice, fly twice, and have it display its health."
puts
puts "Creating Lion object: Lion.new\n\n"
lion = Lion.new
print "Health before activities: "
lion.display_health
puts "\nHaving Lion do bring chaos to town...\n\n"
lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly
print "\nHealth after activities: "
lion.display_health
puts
