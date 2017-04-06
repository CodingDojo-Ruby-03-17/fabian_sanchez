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
      |-> steal > steals item, and increases health
      '-> get_away > flees from battle and this decreases ninja health
----------------------------------
Author: Fabian Sanchez
----------------------------------
Date: 04/04/2017
----------------------------------
=end

# Importing class on a different file on the same directory
require_relative 'human'

# Definition of Ninja class
class Ninja < Human
    # Initializing
    def initialize
      # Default stealth for ninja is 175
      super(3,3,175,100)
    end # End initialize

    # Definition of public methods
    # Ninja steal method for increasing health points
    def steal (attacked_object)
      # Most we can heal is up to 100, the Ninja max health
      attacked_object.health -= 10
      unless @health >= 100
        @health += 10
      else
        # Make sure health is not greater than limit 100
        @health = 100
      end # End unless...else
      return self
    end # End steal

    # Method get_away for fleeing battle and decreasing health of Ninja by 15
    def get_away
      @health -= 15
      return self
    end # End get_away

end # End Class Ninja
