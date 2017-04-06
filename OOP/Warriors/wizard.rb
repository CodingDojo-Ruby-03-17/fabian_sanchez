=begin
==================================
Assignment: Wizard, Ninja, Samurai
==================================

----------------------------------
Purpose
----------------------------------

Human Class definition:
  > Attributes:
      '-> @strength (inherited)
      '-> @intelligence (inherited)
      '-> @stealth (inherited)
      '-> @health (inherited)

  > Methods:
      '-> attack (inherited) > decrease health points according to strength
      |     to attacked Human instance
      '-> heal > recovers Wizard health 10 points
      '-> fireball > decreases attacked object health by 20 points

----------------------------------
Author: Fabian Sanchez
----------------------------------
Date: 04/04/2017
----------------------------------
=end

# Importing class on a different file on the same directory
require_relative 'human'

# Definition of Wizard class
class Wizard < Human
    # Initializing
    def initialize
      # Default intelligence for Wizard is 25, and health is 50
      super(3,25,3,50)
    end # End initialize

    # Definition of public methods
    # Wizard heal method for increasing health points
    def heal
      # Most we can heal is up to 50, the Wizard max health
      unless @health >= 50
        @health += 10
      else
        # Make sure health is not greater than 50
        @health = 50
      end # End unless...else
      return self
    end # End heal

    # Method fireball for decreasing health of attacked object by 20
    def fireball (object_attacked)
      object_attacked.health -= 20
      return self
    end # End fireball

end # End Class Wizard
