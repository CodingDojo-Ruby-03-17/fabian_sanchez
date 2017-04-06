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
      '-> death_blow > Reduceas health points of attacked object to 0
      '-> meditate > Recovers full health of the samurai
      '-> how_many > Returns an int represint the total amount of samurais
          created

----------------------------------
Author: Fabian Sanchez
----------------------------------
Date: 04/04/2017
----------------------------------
=end

# Importing class on a different file on the same directory
require_relative 'human'

# Definition of Class samurai
class Samurai < Human
  # Initializing
  @@total_samurais = 0
  def initialize
    # Default health for Samurai is 200
    super(3,3,3,200)
    @@total_samurais += 1
  end # End initialize

  # Definition of public methods
  # Samurai death_blow  method for reducing health of attacked object to 0
  def death_blow (attacked_object)
    attacked_object.health = 0
    return self
  end # End death_blow

  # Samurai meditate method for healing Samurai to full health
  def meditate
    @health = 200
    return self
  end # End meditate

  # Method get_away for decreasing health of Ninja by 20
  def how_many
    return @@total_samurais
  end # End how_many
end # End Class Samurai
