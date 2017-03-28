=begin
============================
Assignment: Dog
============================

----------------------
Purpose
----------------------

Mammal Class definition:
  > Attributes:
      '-> helathwith value of 150.

  > Methods:
      '-> display_health > prints the health of the Mammal.

----------------------
Author: Fabian Sanchez
----------------------
Date: 03/27/2017
----------------------
=end

# Defining class Mammal
class Mammal
  # Definition of attributes
  # Initializing health
  def initialize (health=150)
    @health = 150
  end

  #Definition of public methods
  # Displaying health
  def display_health
    puts @health
    return self
  end
end
