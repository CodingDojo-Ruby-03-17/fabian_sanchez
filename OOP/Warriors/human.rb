=begin
============================
Assignment: Human I
============================

----------------------
Purpose
----------------------

Human Class definition:
  > Attributes:
      '-> @strength
      '-> @intelligence
      '-> @stealth
      '-> @health

  > Methods:
      '-> attack > decrease health points according to strength to attacked
            Human instance

----------------------
Author: Fabian Sanchez
----------------------
Date: 03/28/2017
----------------------
=end

# Defining class Human
class Human
  # Definition of attributes
  attr_accessor :strength
  attr_accessor :intelligence
  attr_accessor :stealth
  attr_accessor :health
  # Initializing health
  def initialize (strength=3, intelligence=3, stealth=3, health=100)
    @strength = strength
    @intelligence = intelligence
    @stealth = stealth
    @health = health
  end # End initialize

  # Definition of public methods
  # Attack method that works only on Human instances for decreasing health
  def attack (human_attcked)
    # Check if the attacked object is a Human class instance
    if human_attcked.class.ancestors.include? Human
      # Decrease health by strength on the attacked Human
      human_attcked.health -= 10
    else
      "Not a human"
    end # End if
  end # End attack
end # End Human
